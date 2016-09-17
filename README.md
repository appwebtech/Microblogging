## Technical Requirements

### 1. Ruby and Rails. 

```ruby
# My Ruby version; 
ruby 2.3.1p112 (2016-04-26 revision 54768) [x86_64-darwin15]
# My Rails version;
Rails 5.0.0.1
# I use Version Control. Prefer Git than Subversion. 
git version 2.6.4
# Stuff you'll get out of the box are SQLite, most gems and their 
# dependencies for a basic system functionality. 
$ mkdir <your Dir>
$ CD <your Dir>
$ rails new <name of app>
$ rails s 
# Development platform created. :-)
```


### 2. Add minitest-reporters for Test Automation. 

[gem]: https://rubygems.org/gems/minitest-reporters
[travis]: https://travis-ci.org/kern/minitest-reporters

# minitest-reporters - create customizable Minitest output formats

[![Join the chat at https://gitter.im/kern/minitest-reporters](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/kern/minitest-reporters?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Gem Version](https://badge.fury.io/rb/minitest-reporters.svg)][gem]
[![Build Status](https://secure.travis-ci.org/kern/minitest-reporters.png)][travis]

Death to haphazard monkey-patching! Extend Minitest through simple hooks.

## Installation ##

    gem install minitest-reporters

## Usage ##

In your `test_helper.rb` file, add the following lines:

```ruby
require "minitest/reporters"
Minitest::Reporters.use!
```

This will swap out the Minitest runner to the custom one used by minitest-reporters and use the correct reporters for Textmate, Rubymine, and the console. If you would like to write your own reporter, just `include Minitest::Reporter` and override the methods you'd like. Take a look at the provided reporters for examples.

Don't like the default progress bar reporter?

 Activate Set-up Backtrace Silencer. 
```ruby
Rails.backtrace_cleaner.add_silencer { |line| line =~ /rvm/ }
```

 Set-up Guard and initialise to work with Rspec.
Configured development environment to my own liking and comfort: I love Automations done with Guard, Backtrace silensor for refactoring code. Also I killed guard spring server via gitignore to avoid conflicts whilst commiting and deplotying. 

### 3. Bootsrap-sass

[![Gem Version](https://badge.fury.io/rb/bootstrap-sass.svg)](http://badge.fury.io/rb/bootstrap-sass)
[![npm version](https://img.shields.io/npm/v/bootstrap-sass.svg?style=flat)](https://www.npmjs.com/package/bootstrap-sass)
[![Bower Version](https://badge.fury.io/bo/bootstrap-sass.svg)](http://badge.fury.io/bo/bootstrap-sass)
[![Build Status](https://img.shields.io/travis/twbs/bootstrap-sass.svg)](https://travis-ci.org/twbs/bootstrap-sass)

Dropped it in rails using asset pipeline.
```ruby
gem 'bootstrap-sass', '~> 3.3.6'
gem 'sass-rails', '>= 3.2'

# Imported Bootstrap and it's sprockets in the application.scss
@import "bootstrap-sprockets";
@import "bootstrap";
```

### 4. Bcrypt

### 5. Faker

# Faker [![Build Status](https://travis-ci.org/stympy/faker.svg?branch=master)](https://travis-ci.org/stympy/faker) [![Gem Version](https://badge.fury.io/rb/faker.svg)](https://badge.fury.io/rb/faker)


This gem is a port of Perl's Data::Faker library that generates fake data.

It comes in very handy for taking screenshots (taking screenshots for my
project, [Catch the Best](http://catchthebest.com/) was the original impetus
for the creation of this gem), having real-looking test data, and having your
database populated with more than one or two records while you're doing
development.







