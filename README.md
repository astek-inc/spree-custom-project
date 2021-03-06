Spree Custom Project
==================

Allows customers to initiate contact, providing contact information and details of their custom project.

Installation
------------

Add spree_custom_project to your Gemfile:

```ruby
gem 'spree_custom_project'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_custom_project:install
```

Testing
-------

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle
bundle exec rake
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_custom_project/factories'
```

Copyright (c) 2015 Astek Wallcovering, Inc., released under the New BSD License
