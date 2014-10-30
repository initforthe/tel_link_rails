# TelLinkRails

Creates a tel: link tag to the specified `number`, which is also used as the name of the link unless `name` is specified. Additional HTML attributes for the link can be passed in `html_options`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tel_link_rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tel_link_rails

## Usage

```
tel_link '+44 20 8123 4567'
# => <a href="tel:+44-20-8123-4567">+44 20 8123 4567</a>

tel_link '+44 20 8123 4567', 'Telephone'
# => <a href="tel:+44-20-8123-4567">Telephone</a>
```

## Contributing

1. Fork it ( https://github.com/initforthe/tel_link_rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
