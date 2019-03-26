# Espressione

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
puts "Contains a valid e-mail" if email =~ Espressione::EMAIL

# validate url
url = "https://github.com/dvinciguerra"
puts "Contains a valid url" if url =~ Espressione::URL

# validate a uuid
uuid = '8539ad20-317e-0137-4c89-7aa46e47cfb4'
puts "Contains a valid uuid" if uuid =~ Espressione::UUID

# validate a datetime
datetime = Time.now.utc
puts "Contains a valid datetime" if datetime.to_s =~ Espressione::DATETIME
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dvinciguerra/espressione.
