# Slovene Stemmer

A basic implementation of a stemmer for Slovene language. It's not perfect, but it works for most cases.

Inspired by the never implemented snowball version: 

http://snowball.tartarus.org/archives/snowball-discuss/0725.html

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'slovene_stemmer'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install slovene_stemmer

## Usage

``` ruby
require 'slovene_stemmer'

SloveneStemmer.stem('Triglav') # => Trigl
SloveneStemmer.stem('Triglavski') # => Trigl
SloveneStemmer.stem('Triglavska') # => Trigl
SloveneStemmer.stem('Triglavskim') # => Trigl
SloveneStemmer.stem('Triglavskega') # => Trigl
```