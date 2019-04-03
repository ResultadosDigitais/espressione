# Espressione

[![Gem Version](https://badge.fury.io/rb/espressione.svg)](https://badge.fury.io/rb/espressione)
[![Build Status](https://travis-ci.org/dvinciguerra/espressione.svg?branch=master)](https://travis-ci.org/dvinciguerra/espressione)
[![Maintainability](https://api.codeclimate.com/v1/badges/7b9cf8b8ff2f56e6da36/maintainability)](https://codeclimate.com/github/dvinciguerra/espressione/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/7b9cf8b8ff2f56e6da36/test_coverage)](https://codeclimate.com/github/dvinciguerra/espressione/test_coverage)

Espressione is a ruby gem to provide useful regex patterns.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'espressione'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install espressione

## Usage

```ruby
require "espressione"

# validate simple email
email = 'joe@doe.com'
puts "Contains a valid e-mail" if Espressione::EMAIL.match(email)

# validate url
url = "https://github.com/dvinciguerra"
puts "Contains a valid url" if  Espressione::URL.match(url)

# validate a uuid
uuid = '8539ad20-317e-0137-4c89-7aa46e47cfb4'
puts "Contains a valid uuid" if Espressione::UUID.match(uuid)

# validate a datetime
datetime = Time.now.utc
puts "Contains a valid datetime" if Espressione::DATETIME.match(datetime.to_s)

# validate a ip
ip = '192.168.1.1'
puts "Contains a valid ip" if Espressione::IP.match(ip)
```

## Development

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dvinciguerra/espressione.
