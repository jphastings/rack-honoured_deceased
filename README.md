# Rack::HonouredDeceased

A simple gem to include X-Clacks-Overhead headers for those lost but not forgotten into any rack (rails, sinatra, etc) application.

Inspired by [this thread](http://redd.it/2yt9j6) on reddit.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rack-honoured_deceased'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-honoured_deceased

## Usage

### Stand Alone Rack App

```ruby
# config.ru
require 'rack'
require 'rack/honoured_deceased'

use Rack::HonouredDeceased, ["Terry Pratchett"]
app = proc do |env|
  [ 200, {'Content-Type' => 'text/plain'}, ["Your webapp"] ]
end
```
Then run
`rackup`

### Sinatra
```ruby
require 'sinatra'
require 'rack/honoured_deceased'

use Rack::HonouredDeceased, ["Terry Pratchett"]

get '/' do
  'Your webapp'
end
```

### Rails
```ruby
# Add it to your Gemfile
gem 'rack-honoured_deceased'
```

```ruby
# In config/application.rb
config.middleware.use Rack::HonouredDeceased, ["Terry Pratchett"]
```
or

```ruby
# In config.ru
use Rack::HonouredDeceased, ["Terry Pratchett"]
```
## Testing

`rspec`

## Contributing

1. Fork it ( https://github.com/jphastings/rack-honoured_deceased/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request


GNU Terry Pratchett
