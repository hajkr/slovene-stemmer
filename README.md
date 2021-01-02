# Slovene Stemmer

A basic implementation of a stemmer for Slovene language. 

Inspired by the never implemented snowball version: 
http://snowball.tartarus.org/archives/snowball-discuss/0725.html

## Installation guide

Run the following in your terminal

``` bash
gem install slovene_stemmer
```

or put the following in your Gemfile

``` ruby
require 'slovene_stemmer'
```

## How to use

``` ruby
require 'slovene_stemmer'

SloveneStemmer.stem('Triglavski') # => Trigl
SloveneStemmer.stem('Triglavska') # => Trigl
SloveneStemmer.stem('Triglavskim') # => Trigl
SloveneStemmer.stem('Triglavskega') # => Trigl
```