# Fluent::Plugin::OutHostedGraphite

fluentd plugin for [Hosted Graphite](https://www.hostedgraphite.com/).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fluent-plugin-out_hosted_graphite'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fluent-plugin-out_hosted_graphite

## Configure

### fluentd.conf

```
<match *.*>
  type hosted_graphite
  api_key xxxxxxxx-xxxx-xxxx-xxxxxxxxxxxxxxxxx
  metric_key foo.bar,hoge,fuga,bar
  protocol udp
</match>
```

### api_key

 * Required

### metric_key

 * Required
 * Supported multiple keys

### protocol

 * UDP
 * TCP
 * HTTP(Default)

## Contributing

1. Fork it ( https://github.com/[my-github-username]/fluent-plugin-out_hosted_graphite/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
