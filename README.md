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

You can import your set of expressions directly from the [YAML](https://yaml.org/) file.

```yaml
# In phone.yml
local: '\(?[0-9]{2,3}\)? ?[0-9]{3,4}[ -]?[0-9]{4}'
international: '\+[0-9]{2}? \(?[0-9]{2,3}\)? ?[0-9]{3,4}[ -]?[0-9]{4}'
```

```ruby
require "espressione"

Espressione.load "phone.yml", prefix: :phone

Espressione.phone_local # => /\(?[0-9]{2,3}\)? ?[0-9]{3,4}[ -]?[0-9]{4}/
Espressione.phone_international # => /\+[0-9]{2}? \(?[0-9]{2,3}\)? ?[0-9]{3,4}[ -]?[0-9]{4}/
```


Or you can use our standard set of expressions:

[datetime](#datetime),
[date](#date),
[time](#time),
[uuid](#uuid),
[ip](#ip),
[ipv6](#ipv6),
[url](#url),
[email](#email),
[subdomain](#subdomain),
[html_tag](#html_tag)


```ruby

# validate simple email
email = 'joe@doe.com'
puts "Contains a valid e-mail" if Espressione.email.match(email)

# validate url
url = "https://github.com/dvinciguerra"
puts "Contains a valid url" if  Espressione.url.match(url)

# validate a uuid
uuid = '8539ad20-317e-0137-4c89-7aa46e47cfb4'
puts "Contains a valid uuid" if Espressione.uuid.match(uuid)

# validate a datetime
datetime = Time.now.utc
puts "Contains a valid datetime" if Espressione.datetime.match(datetime.to_s)

# validate a ip
ip = '192.168.1.1'
puts "Contains a valid ip" if Espressione.ip.match(ip)
```

### datetime

```ruby
  Espressione.datetime.match("2019-04-30 18:37:07 UTC")
```

### date

```ruby
  Espressione.date.match("2019-04-30")
```

### time

```ruby
  Espressione.time.match("10:01:12")
```

### uuid

```ruby
  Espressione.uuid.match("8539ad20-317e-0137-4c89-7aa46e47cfb4")
```

### ip

```ruby
  Espressione.ip.match("127.0.0.1")
```

### ipv6

```ruby
  Espressione.ipv6.match("2001:0db8:85a3:0000:0000:8a2e:0370:7334")
```

### url

```ruby
  Espressione.url.match("https://github.com/dvinciguerra")
```

### email

```ruby
  Espressione.email.match("joe@doe.com")
```

### subdomain

```ruby
  Espressione.subdomain.match("shipit.resultadosdigitais.com.br")
```

### html_tag

```ruby
  Espressione.html_tag.match("<body>")
```

## Development

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dvinciguerra/espressione.
