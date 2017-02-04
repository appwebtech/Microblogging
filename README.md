# A Ruby on Rails Social-Media Website App. 

## Software Development Documentation. 

After the hype of [Responsive Web design](https://en.wikipedia.org/wiki/Responsive_web_design), many developers and designers have started automating their designs using [Behavior Driven Development (BDD) ](https://en.wikipedia.org/wiki/Behavior-driven_development) which is a much more advanced technique of [Test Driven Development (TDD) ](https://en.wikipedia.org/wiki/Test-driven_development). 

I decided to automate each and every part of this application, from the routers HTTP Methods for [RESTful Services](https://en.wikipedia.org/wiki/Representational_state_transfer) to the behavior of the application when correct/incorrect data has been supplied. 

My design was inspired by [Twitter](http://twitter.com) making it a Social Media Website App, where users can sign-up, create microposts, share with friends and follow/unfollow friends. 

The Software Architecture and Implementation (Coding) has been purely done with [Ruby](https://www.ruby-lang.org/en/rails framework) the programming language and [Rails the Framework](http://rubyonrails.org/). 

I wrote my Tests by running the necessary test commands via Bash/Terminal and automated them with Guard and Minitest. Even though the project is time consuming, it guarantees a bug free project with almost a zero Operation and Maintenance platform. 

### Why Ruby on Rails?

Ruby is an Object Oriented Programming Language and almost every code is an object. It's easy to code, share with other developers and de-bug across platforms like [GitHub](https://github.com/) and [BitBucket](https://bitbucket.org/). Printing "Hello World" would go like this in Ruby.

```ruby
puts "Hello World!"
```

While in Javascript it would be;

```Javascript
var x = "Hello";

document.write(x + 'World!');  // If printing on browser 

console.log(x + 'World!'); // If printing on JS console.

alert(x + 'World!');  // Browser alert
```

As you can see, less code is written in Ruby and there are no complexities of thinking about variables, string literals and how to output them like in Javascript. 

Ruby is compatible with Frameworks like Rails, Sinatra, Padrino, Cuba etc and employs the [Dont Repeat Yourself DRY](https://code.tutsplus.com/tutorials/3-key-software-principles-you-must-understand--net-25161) principle of coding.

When you get the hang of Ruby and a Framework of your choice you become very productive and organised. Security can be enhanced using a one line of code, and Cross-site Scripting (XSS) are rare in Ruby Applications. 

Been an Open-Source enthusiast, I can't help mentioning that Ruby is Open Source like Linux, etc. This is the future of Software Development. 

# Software Engineering Technologies

## 1. Ruby and Rails Environment. 

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


## 2. Minitest-reporters for Test Automation. 

[gem]: https://rubygems.org/gems/minitest-reporters
[travis]: https://travis-ci.org/kern/minitest-reporters

### minitest-reporters - create customizable Minitest output formats

[![Join the chat at https://gitter.im/kern/minitest-reporters](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/kern/minitest-reporters?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Gem Version](https://badge.fury.io/rb/minitest-reporters.svg)][gem]
[![Build Status](https://secure.travis-ci.org/kern/minitest-reporters.png)][travis]

Death to haphazard monkey-patching! Extend Minitest through simple hooks.

### Installation

    gem install minitest-reporters

### Usage

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

## 3. Guard (Automation)

[![Gem Version](https://img.shields.io/gem/v/guard.svg?style=flat)](https://rubygems.org/gems/guard) [![Build Status](https://travis-ci.org/guard/guard.svg)](https://travis-ci.org/guard/guard) [![Dependency Status](https://gemnasium.com/guard/guard.svg)](https://gemnasium.com/guard/guard) [![Code Climate](https://codeclimate.com/github/guard/guard/badges/gpa.svg)](https://codeclimate.com/github/guard/guard) [![Test Coverage](https://codeclimate.com/github/guard/guard/badges/coverage.svg)](https://codeclimate.com/github/guard/guard) [![Inline docs](http://inch-ci.org/github/guard/guard.svg)](http://inch-ci.org/github/guard/guard)

<img src="http://f.cl.ly/items/0A0M3W2x3I1P450z341U/guard-Icon.png" alt="Guard Icon" align="right" />
Guard automates various tasks by running custom rules whenever file or directories are modified.

It's frequently used by software developers, web designers, writers and other specialists to avoid mundane, repetitive actions and commands such as "relaunching" tools after changing source files or configurations.

Common use cases include: an IDE replacement, web development tools, designing "smart" and "responsive" build systems/workflows, automating various project tasks and installing/monitoring various system services.

For a full categorized list of known Guard plugins, look here: https://github.com/guard/guard/wiki/Guard-Plugins

For more info:

* [Guard Wiki](https://github.com/guard/guard/wiki)
* [Google+ community](https://plus.google.com/communities/110022199336250745477).
* [Google group](http://groups.google.com/group/guard-dev).
* [StackOverflow](http://stackoverflow.com/questions/tagged/guard).
* IRC channel `#guard` (irc.freenode.net) for chatting.

Before you file an issue, make sure you have read the _[known issues](#issues)_ and _[file an issue](#file-an-issue)_ sections that contains some important information.

### Features

* File system changes handled by our awesome [Listen](https://github.com/guard/listen) gem.
* Support for visual system notifications.
* Huge eco-system with [more than 220](https://rubygems.org/search?query=guard-) Guard plugins.
* Tested against Ruby 1.9.3, 2.0.0, 2.1.0, JRuby & Rubinius.

### Screencast

Two nice screencasts are available to help you get started:

* [Guard](http://railscasts.com/episodes/264-guard) on RailsCast.
* [Guard is Your Best Friend](http://net.tutsplus.com/tutorials/tools-and-tips/guard-is-your-best-friend) on Net Tuts+.

### Installation


The simplest way to install Guard is to use [Bundler](http://bundler.io).

Add Guard (and any other dependencies) to a `Gemfile` in your project’s root:

```ruby
group :development do
  gem 'guard'
end
```

then install it by running Bundler:

## 4. Bootsrap-sass

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

## 5. Bcrypt

An easy way to keep your users' passwords secure.

[![Build Status](https://travis-ci.org/codahale/bcrypt-ruby.png?branch=master)](https://travis-ci.org/codahale/bcrypt-ruby)

### Why you should use `bcrypt()`

If you store user passwords in the clear, then an attacker who steals a copy of your database has a giant list of emails
and passwords. Some of your users will only have one password -- for their email account, for their banking account, for
your application. A simple hack could escalate into massive identity theft.

It's your responsibility as a web developer to make your web application secure -- blaming your users for not being
security experts is not a professional response to risk.

`bcrypt()` allows you to easily harden your application against these kinds of attacks.

*Note*: JRuby versions of the bcrypt gem `<= 2.1.3` had a [security
vulnerability](http://www.mindrot.org/files/jBCrypt/internat.adv) that
was fixed in `>= 2.1.4`. If you used a vulnerable version to hash
passwords with international characters in them, you will need to
re-hash those passwords. This vulnerability only affected the JRuby gem.

## 6. Faker

### Faker [![Build Status](https://travis-ci.org/stympy/faker.svg?branch=master)](https://travis-ci.org/stympy/faker) [![Gem Version](https://badge.fury.io/rb/faker.svg)](https://badge.fury.io/rb/faker)


This gem is a port of Perl's Data::Faker library that generates fake data.

It comes in very handy for taking screenshots (taking screenshots for my
project, [Catch the Best](http://catchthebest.com/) was the original impetus
for the creation of this gem), having real-looking test data, and having your
database populated with more than one or two records while you're doing
development.

## 7. Will_paginate

will_paginate is a pagination library that integrates with Ruby on Rails, Sinatra, Merb, DataMapper and Sequel.

Installation:

``` ruby
## Gemfile for Rails 3+, Sinatra, and Merb
gem 'will_paginate', '~> 3.1.0'
```

See [installation instructions][install] on the wiki for more info.


### Basic will_paginate use

``` ruby
## perform a paginated query:
@posts = Post.paginate(:page => params[:page])

# or, use an explicit "per page" limit:
Post.paginate(:page => params[:page], :per_page => 30)

## render page links in the view:
<%= will_paginate @posts %>
```

## 8. MiniMagick


[![Build Status](https://travis-ci.org/minimagick/minimagick.svg?branch=master)](http://travis-ci.org/minimagick/minimagick)
[![Code Climate](https://codeclimate.com/github/minimagick/minimagick/badges/gpa.svg)](https://codeclimate.com/github/minimagick/minimagick)

A ruby wrapper for [ImageMagick](http://imagemagick.org/) or
[GraphicsMagick](http://www.graphicsmagick.org/) command line.

### Why?

I was using [RMagick](https://github.com/rmagick/rmagick) and loving it, but it
was eating up huge amounts of memory. Even a simple script would use over 100MB
of RAM. On my local machine this wasn't a problem, but on my hosting server the
ruby apps would crash because of their 100MB memory limit.

### Solution!

Using MiniMagick the ruby processes memory remains small (it spawns
ImageMagick's command line program mogrify which takes up some memory as well,
but is much smaller compared to RMagick). See [Thinking of switching from
RMagick?](#thinking-of-switching-from-rmagick) below.

MiniMagick gives you access to all the command line options ImageMagick has
(found [here](http://www.imagemagick.org/script/command-line-options.php)).

### Requirements

ImageMagick or GraphicsMagick command-line tool has to be installed. You can
check if you have it installed by running

```sh
$ convert -version
Version: ImageMagick 6.8.9-7 Q16 x86_64 2014-09-11 http://www.imagemagick.org
Copyright: Copyright (C) 1999-2014 ImageMagick Studio LLC
Features: DPC Modules
Delegates: bzlib fftw freetype jng jpeg lcms ltdl lzma png tiff xml zlib
```

## 9. CarrierWave

This gem provides a simple and extremely flexible way to upload files from Ruby applications.
It works well with Rack based web applications, such as Ruby on Rails.

[![Build Status](https://travis-ci.org/carrierwaveuploader/carrierwave.svg?branch=master)](http://travis-ci.org/carrierwaveuploader/carrierwave)
[![Code Climate](http://img.shields.io/codeclimate/github/carrierwaveuploader/carrierwave.svg)](https://codeclimate.com/github/carrierwaveuploader/carrierwave)
[![git.legal](https://git.legal/projects/1363/badge.svg "Number of libraries approved")](https://git.legal/projects/1363)


> ### carrierwave version disclaimer
> ***This README is for a branch which is still in development.
> Please switch to latest `0.x` branch for stable version.***


### Information

* RDoc documentation [available on RubyDoc.info](http://rubydoc.info/gems/carrierwave/frames)
* Source code [available on GitHub](http://github.com/carrierwaveuploader/carrierwave)
* More information, known limitations, and how-tos [available on the wiki](https://github.com/carrierwaveuploader/carrierwave/wiki) 

## 10. Fog 

![fog](http://geemus.s3.amazonaws.com/fog.png)

fog is the Ruby cloud services library, top to bottom:

* Collections provide a simplified interface, making clouds easier to work with and switch between.
* Requests allow power users to get the most out of the features of each individual cloud.
* Mocks make testing and integrating a breeze.

[![Build Status](https://secure.travis-ci.org/fog/fog.svg?branch=master)](http://travis-ci.org/fog/fog)
[![Dependency Status](https://gemnasium.com/fog/fog.svg)](https://gemnasium.com/fog/fog)
[![Code Climate](https://codeclimate.com/github/fog/fog/badges/gpa.svg)](https://codeclimate.com/github/fog/fog)
[![Gem Version](https://badge.fury.io/rb/fog.svg)](http://badge.fury.io/rb/fog)

### Dependency Notice

Currently all fog providers are getting separated into metagems to lower the
load time and dependency count.

If there's a metagem available for your cloud provider, e.g. `fog-aws`,
you should be using it instead of requiring the full fog collection to avoid 
unnecessary dependencies.

'fog' should be required explicitly only if:  
- The provider you use doesn't yet have a metagem available.
- You require Ruby 1.9.3 support.

### Getting Started

Easy to install and invoke Amazon with an excellent compatibility with Rails 5. Haven't tried dependency injection whilst developing with both Angular Rails, but I reckon that wouldn't be an issue.

```
$ sudo gem install fog
[...]

$ fog

  Welcome to fog interactive!
  :default provides [...]

>> server = Compute[:aws].servers.create
ArgumentError: image_id is required for this operation

>> server = Compute[:aws].servers.create(:image_id => 'ami-5ee70037')
<Fog::AWS::EC2::Server [...]>

>> server.destroy # cleanup after yourself or regret it, trust me
true
```

## 11. Gems

The following table shows the gems I used for this project. Most of the default gems were updated with current versions via [Ruby Gems](https://rubygems.org/) whilst others worked well in their older versions. I grouped some of the gems from their default state to development test or production so as not to mix things up. 


     Group       | Gemfile              | Version Type
     --------------- |:-------------------------------------|:--------------------
     `default`       | `'rails'`            | `5.0.0.1`
     `default`        | `puma`                | `3.4.0`
     `default`         | `bootstrap-sass`    | `~> 3.3.6` 
     `default`           | `sass-rails`       | `>= 3.2` 
     `default`           | `bcrypt`          | `~> 3.1', '>= 3.1.11` 
     `default`      | `faker`               | `~> 1.6', '>= 1.6.6`
     `default`        | `carrierwave`          | `~> 0.11.2`
     `default`          | `mini_magick`         | `~> 4.5', '>= 4.5.1`
     `default`          | `fog`                 | `~> 1.38`
     `default`          | `will_paginate`   | `~> 3.1` 
     `default`        | `uglifier`          | `3.0.0` 
     `default`       | `coffee-rails`       | `4.2.1`
     `default`         | `jquery-rails`     | `4.1.1`
     `default`       | `turbolinks`        | `5.0.1`
     `default`         | `jbuilder`      | `2.4.1`
     `development`     | `sqlite3`          | `1.3.11`
     `development`     | `byebug`           | `9.0.0`
     `development`          | `web-console`    | `3.1.1`
     `development`        | `listen`   |    `3.0.8`
     `development`         | `spring`     | `1.7.2`
     `development`       | `spring-watcher-listen`  | `0.1.1`
     `test`     | `rails-controller-testing`      | `2.4.1`
     `test`     | `minitest-reporters`          | `1.1.9`
     `test`     | `guard`           | `2.13.0`
     `test`     | `guard-minitest`    | `2.4.4`
     `production`        | `pg`   | `0.18.4`
     `production`        | `PostgreSQL`   | `0.8.1`

## 12. Deployment instructions

Deployment is straight forward in Ubuntu & Capistrano, Passenger, Git & Capistrano, Heroku, etc.
```ruby
# HEROKU: Used PostgreSQL for deployment and SQLite for development. 
# Used Puma local webserver.

# GIT & Capistrano: Version Control and Push to a remote repo.
# git remote add origin git@github.com:username/your-repo-name.git  {Using SSH}

# {Using HTTP}
# Capistrano;
group :development do
    gem 'capistrano'
end

$ bundle install 

# Install, then capify the app.
```


## Developer

Development done by;

Joseph M Mwania. 
## Contacts


http://www.theappwebtech.com/

https://github.com/appwebtech

https://twitter.com/appwebtech

https://www.facebook.com/theappwebtech/

https://it.pinterest.com/appwebtech/

## License

MIT License. Copyright 2016 Appwebtech. http://theappwebtech.com

