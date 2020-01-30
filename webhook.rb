#!/usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'
require 'ostruct'

## Config
Bundler.require
Octokit.auto_paginate = true

def ask(q)
  print q + ': '
  response = gets.chomp!
end

## Gather info from user
clubhouse_hook = ask("Clubhouse Webhook URL")

github_org = ask("Github Org")
github_token = ask("Github API token [need scopes: admin:repo_hook,repo]")


## fetch github repos
client = Octokit::Client.new(:access_token => github_token)

client.org_repositories(github_org, :type => 'private').each do |repo|

  next if repo.archived
  puts "adding webhooks to #{repo.name}..."

  repo_name = "#{github_org}/#{repo.name}"

  existing_hooks = client.hooks(repo_name)

  #
  # multiple events, json encoded
  #
  unless client.hooks(repo_name).detect {|x| x.name == 'web' && x.config.url == clubhouse_hook && x.events == ["*"] && x.config.content_type == 'json'}
    client.create_hook(
      repo_name,
      "web",
      {
        :url => clubhouse_hook,
        :content_type => "json"
      },
      {
        :events => ["*"],
        :active => true
      }
    )
  end

end
