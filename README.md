# Embedder (WIP)

Intended to be an oembed client. Not fully fleshed out yet.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'embedder'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install embedder
```

Set `ENV['EMBEDLY_KEY']` to your [http://embed.ly](embed.ly) API key.

Parse a URL like so:

```ruby
@embed = Embedder.parse('http://www.youtube.com/watch?v=VzZ_pHmauVo')
```

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
