# clubhouse-webhooks

script to automate setting up github webhooks

## Usage/Installation

### pre-requisites

  * a [clubhouse account](https://clubhouse.io) and your clubhouse webhook URL ("cog menu" > integrations > github)
  * A github token generated at https://github.com/settings/tokens
    * add these scopes: admin:repo_hook, repo
  * the organization you want to wire up in clubhouse
  * a ruby environment to run the script

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
