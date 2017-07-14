# capistrano-deploy-all

This Ruby gem provides the code to deploy a service or run a Rake task against
all environments using Capistrano.

The environments are going to be read based on the `/config/deploy/*.rb` files.


## Installation

Include `capistrano-deploy-all` in your project adding into your `Gemfile`:

```
gem "capistrano-deploy-all"
```

In order to run a Rake task against all environment you have to require the
Rake tasks from the gem in your project:

```
require "capistrano-deploy-all/tasks"
```


## Usage

There are two interactive executables where you can select the environments
that you want to use:
- `bundle exec deploy_all` to deploy a service.
- `bundle exec rake_all` to run a Rake task.

Bundler can install binstubs for the executables:

```
bundle binstubs capistrano-deploy-all
```

This provides the executables in the `bin` directory of the project:
- `bin/deploy_all`
- `bin/rake_all`
