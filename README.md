# Sasha

Add your current Git SHA to your Rails or Sinatra app
response headers.

## Requirements

That you use git to track your source code

## Usage

### Rails 3

Add it to your Gemfile, you are using bundler, right?

    gem 'sasha'

### Rails 2

Install the gem:

    gem install sasha

Add to bottom of environment.rb:

    require 'sasha'

### Sinatra

Require it on *config.ru* after sinatra/base

    require 'sinatra/base'
    require 'sasha'

## Test it

    $ curl -I http://www.example.net | grep X-Git-Sha

Your should see something like

		X-Git-Sha: ae4822ddfdfbb27cddcc30b718d6f9bc99138044

# About the Author

[Crowd Interactive](http://www.crowdint.com) is an American web design and development company
that happens to work in Colima, Mexico.
We specialize in building and growing online retail stores.
We don’t work with everyone – just companies we believe in. Call us today to see if there’s a fit.
Find more info [here](http://www.crowdint.com)!
