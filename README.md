# jira-github-webhooks

script to automate setting up github webhooks

## History

When setting up Atlassian OnDemand's DVCS connector, it did not correctly create webhooks in Github to push back to Jira nor did it provide any error messages.

As per https://confluence.atlassian.com/jirakb/slow-appearing-commits-from-bitbucket-or-github-in-jira-779160823.html you can manually add them.

Rather than going through each repo and setting them up manually, this script automates the process.

## Usage/Installation

### pre-requisites
  * Atlassian OnDemand username/password
  * the DVCS connector configured and setup (if you see XML here, it is working: https://YOUR_SUBDOMAIN.atlassian.net/rest/bitbucket/1.0/repositories)
  * A github token generated at https://github.com/settings/tokens
    * add these scopes: admin:repo_hook, repo
  * a ruby environment

### setup
```
bundle install
```

### running
```
./webhook.rb
```

## Contributing
see [simplified Github workflow](http://scottchacon.com/2011/08/31/github-flow.html)

* create an issue related to the problem you want to fix (good for traceability and cross-reference)
* fork the repository
* create a branch (optionally with the reference to the issue in the name)
* hack hack hack
* commit incrementally with readable and detailed commit messages
* submit a pull-request against the master branch of this repository

## License
[MIT License](./LICENSE)

&copy; 2016 Erik Gustavson
