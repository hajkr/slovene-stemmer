require_relative 'lib/slovene_stemmer/version'

Gem::Specification.new do |s|
  s.name = 'slovene_stemmer'
  s.version = SloveneStemmer::VERSION
  s.date = '2020-01-02'
  s.summary = "A basic stemmer for Slovene language."
  s.authors = ["Tadej Hribar"]
  s.email = 'tadej.996@gmail.com'
  s.homepage = 'https://rubygems.org/gems/slovene_stemmer'
  s.license = 'MIT'
  s.metadata = {
      "source_code_uri" => "https://github.com/Hajkr/slovene-stemmer",
      "homepage_uri" => 'https://rubygems.org/gems/slovene_stemmer',
  }
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  s.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  s.bindir = "exe"
  s.executables = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]
end