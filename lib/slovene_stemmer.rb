require 'yaml'
require_relative './slovene_stemmer/stem'

module SloveneStemmer
  extend self

  def load_endings
    config_path = File.expand_path("../../config/slovene_stemmer.yml", __FILE__)

    YAML.load_file(config_path)['word_endings'].group_by(&:length)
  rescue => e
    raise "Please provide a valid config/stemmer.yml file, #{e}"
  end

  ALPHABET = 'abcčdefghijklmnoprsštuvzž'.freeze
  VOWELS = 'aeiou'.freeze
  CONSONANTS = ALPHABET.tr(VOWELS, '').freeze
  WORD_ENDINGS = load_endings

  def stem(word)
    stem = Stem.new(word.strip)
    stem.remove_symbols!

    4.times do
      WORD_ENDINGS.each do |ending_length, endings|
        next if stem.length <= ending_length + 3

        stem.remove_last_char! if stem.ends_with?(endings)
      end

      if stem.length > 6 && stem.ends_with?(CONSONANTS.chars)
        stem.remove_last_char!
      end

      if stem.length > 5 && stem.ends_with?(VOWELS.chars)
        stem.remove_last_char!
      end
    end

    stem.to_s
  end
end