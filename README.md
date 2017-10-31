# LineNotifyRuby

https://notify-bot.line.me/en/
LINE Notify Client in Ruby

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'line_notify_ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install line_notify_ruby

## Usage

```
require 'line_notify_ruby'

token = 'xxxxxxxxxxxxxxxxxxxxxxxxxzzzzzzzz'
client = LineNotifyRuby.new(token)
client.send_message("hoge\nfuga")
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

