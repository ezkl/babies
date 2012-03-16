# Babies!
Babies is a Ruby interface to Taobao's undocumented mobile API. I made it because I'm unable to get an official API account. Fortunately, I **was** able to download their official iPhone app. I setup a proxy, recorded some requests, and discovered the API.

Travis-CI continuously tests `babies` against Ruby 1.9.2, 1.9.3 as well as Rubinius and JRuby operating in 1.9 modes.

Gemnasium watches for new releases of dependencies.

## Babies?
The phrase " 宝贝" appears all over Taobao. It means something along the lines of "special gift" but is commonly mistranslated to "baby" or "babies". This amuses me. Almost as much as recording an iPhone app's HTTP requests with a proxy.

## Installation

Add this line to your application's Gemfile:

    gem 'babies'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install babies

## Usage

    require 'babies'
    
    results = Babies.search("search phrase")
    results.first # => <Result>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
