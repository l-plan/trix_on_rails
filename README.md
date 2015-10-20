# TrixOnRails

Please take a look at [https://github.com/basecamp/trix]() All credits go to the fine people of the basecamp-family.

This gem's only purpose is to add the trix- js and -css files to the assets-pipeline. Technically it is a plugin.

The goal is to add some WYSIWYG-methods to my website and play along with rails5.

## Dependency

The Trix -project is created with ruby 2.1.2, TrixOnRails was build using ruby 2.2.2.
This gem depends on mysql2 and rails5. Just for fun.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'trix_on_rails'
```

or if you want to install the latest from github:

```ruby
gem 'trix_on_rails',  :git => 'git@github.com:l-plan/trix_on_rails.git'
```


And then execute:

    $ bundle

Or install it yourself as:

    $ gem install trix_on_rails

## Usage

please take a look at [https://github.com/basecamp/trix]()

add to application.js


	 //= require trix

or

	//= require trix-core


add to application.css


	 *= require trix

___

## Test
todo

TrixOnRails will use minitest. But as for now, the only thing to test is its presence 
Run rake to start the test-suite.


## Contributing

1. Fork it ( https://github.com/[my-github-username]/trix_on_rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

[![Gem Version](https://badge.fury.io/rb/trix_on_rails.svg)](https://badge.fury.io/rb/trix_on_rails)

