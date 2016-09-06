1. Add minitest-reporters for Test Automation. 

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

2. Activate Set-up Backtrace Silencer. 
```ruby
Rails.backtrace_cleaner.add_silencer { |line| line =~ /rvm/ }
```

3. Set-up Guard and initialise to work with Rspec.
Configured development environment to my own liking and comfort: I love Automations done with Guard, Backtrace silensor for refactoring code. Also I killed guard spring server via gitignore to avoid conflicts whilst commiting and deplotying. 





