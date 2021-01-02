# Slovene Stemmer

A basic implementation of a stemmer for Slovene language. 

Inspired by the never implemented snowball version: 

http://snowball.tartarus.org/archives/snowball-discuss/0725.html

## Installation guide

Run the following in your terminal

``` bash
gem install slovene_stemmer
```

or put this in your Gemfile

``` ruby
gem 'slovene_stemmer'
```

## How to use

``` ruby
require 'slovene_stemmer'

SloveneStemmer.stem('Triglav') # => Trigl
SloveneStemmer.stem('Triglavski') # => Trigl
SloveneStemmer.stem('Triglavska') # => Trigl
SloveneStemmer.stem('Triglavskim') # => Trigl
SloveneStemmer.stem('Triglavskega') # => Trigl
```