require_relative './lib/slovene_stemmer/version'

Gem::Specification.new do |s|
  s.name = 'slovene_stemmer'
  s.version = SloveneStemmer::VERSION
  s.date = '2020-01-02'
  s.summary = "A basic stemmer for Slovene language."
  s.authors = ["Tadej Hribar"]
  s.email = 'tadej.996@gmail.com'
  s.files = %w[lib/slovene_stemmer.rb lib/slovene_stemmer/stem.rb]
  s.homepage = 'https://rubygems.org/gems/slovene_stemmer'
  s.license = 'MIT'
  s.metadata = {
      "source_code_uri": "https://github.com/Hajkr/slovene-stemmer"
  }
end