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

### 6. Will_paginate

# will_paginate

will_paginate is a pagination library that integrates with Ruby on Rails, Sinatra, Merb, DataMapper and Sequel.

Installation:

``` ruby
## Gemfile for Rails 3+, Sinatra, and Merb
gem 'will_paginate', '~> 3.1.0'
```

See [installation instructions][install] on the wiki for more info.


## Basic will_paginate use

``` ruby
## perform a paginated query:
@posts = Post.paginate(:page => params[:page])

# or, use an explicit "per page" limit:
Post.paginate(:page => params[:page], :per_page => 30)

## render page links in the view:
<%= will_paginate @posts %>
```

#### 7. MiniMagick

# MiniMagick

[![Build Status](https://travis-ci.org/minimagick/minimagick.svg?branch=master)](http://travis-ci.org/minimagick/minimagick)
[![Code Climate](https://codeclimate.com/github/minimagick/minimagick/badges/gpa.svg)](https://codeclimate.com/github/minimagick/minimagick)

A ruby wrapper for [ImageMagick](http://imagemagick.org/) or
[GraphicsMagick](http://www.graphicsmagick.org/) command line.

## Why?

I was using [RMagick](https://github.com/rmagick/rmagick) and loving it, but it
was eating up huge amounts of memory. Even a simple script would use over 100MB
of RAM. On my local machine this wasn't a problem, but on my hosting server the
ruby apps would crash because of their 100MB memory limit.

## Solution!

Using MiniMagick the ruby processes memory remains small (it spawns
ImageMagick's command line program mogrify which takes up some memory as well,
but is much smaller compared to RMagick). See [Thinking of switching from
RMagick?](#thinking-of-switching-from-rmagick) below.

MiniMagick gives you access to all the command line options ImageMagick has
(found [here](http://www.imagemagick.org/script/command-line-options.php)).

## Requirements

ImageMagick or GraphicsMagick command-line tool has to be installed. You can
check if you have it installed by running

```sh
$ convert -version
Version: ImageMagick 6.8.9-7 Q16 x86_64 2014-09-11 http://www.imagemagick.org
Copyright: Copyright (C) 1999-2014 ImageMagick Studio LLC
Features: DPC Modules
Delegates: bzlib fftw freetype jng jpeg lcms ltdl lzma png tiff xml zlib
```

### 8. CarrierWave

# CarrierWave

This gem provides a simple and extremely flexible way to upload files from Ruby applications.
It works well with Rack based web applications, such as Ruby on Rails.

[![Build Status](https://travis-ci.org/carrierwaveuploader/carrierwave.svg?branch=master)](http://travis-ci.org/carrierwaveuploader/carrierwave)
[![Code Climate](http://img.shields.io/codeclimate/github/carrierwaveuploader/carrierwave.svg)](https://codeclimate.com/github/carrierwaveuploader/carrierwave)
[![git.legal](https://git.legal/projects/1363/badge.svg "Number of libraries approved")](https://git.legal/projects/1363)


> ## carrierwave version disclaimer
> ***This README is for a branch which is still in development.
> Please switch to latest `0.x` branch for stable version.***


## Information

* RDoc documentation [available on RubyDoc.info](http://rubydoc.info/gems/carrierwave/frames)
* Source code [available on GitHub](http://github.com/carrierwaveuploader/carrierwave)
* More information, known limitations, and how-tos [available on the wiki](https://github.com/carrierwaveuploader/carrierwave/wiki) 

### 9. Fog 

![fog](http://geemus.s3.amazonaws.com/fog.png)

fog is the Ruby cloud services library, top to bottom:

* Collections provide a simplified interface, making clouds easier to work with and switch between.
* Requests allow power users to get the most out of the features of each individual cloud.
* Mocks make testing and integrating a breeze.

[![Build Status](https://secure.travis-ci.org/fog/fog.svg?branch=master)](http://travis-ci.org/fog/fog)
[![Dependency Status](https://gemnasium.com/fog/fog.svg)](https://gemnasium.com/fog/fog)
[![Code Climate](https://codeclimate.com/github/fog/fog/badges/gpa.svg)](https://codeclimate.com/github/fog/fog)
[![Gem Version](https://badge.fury.io/rb/fog.svg)](http://badge.fury.io/rb/fog)

## Dependency Notice

Currently all fog providers are getting separated into metagems to lower the
load time and dependency count.

If there's a metagem available for your cloud provider, e.g. `fog-aws`,
you should be using it instead of requiring the full fog collection to avoid 
unnecessary dependencies.

'fog' should be required explicitly only if:  
- The provider you use doesn't yet have a metagem available.
- You require Ruby 1.9.3 support.

## Getting Started

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



