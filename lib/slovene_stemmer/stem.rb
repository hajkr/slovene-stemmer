module SloveneStemmer
  Stem = Struct.new(:stem) do
    SYMBOLS = %w[, . ! : ; - _ ( ) ?].freeze

    def ends_with?(ending_candidates)
      ending_candidates.any? { |ending| stem.downcase.end_with?(ending) }
    end

    def remove_last_char!
      self.stem = stem[0...-1]
    end

    def remove_symbols!
      SYMBOLS.each do |symbol|
        stem.gsub!(symbol, ' ')
      end
    end

    def length
      stem.length
    end

    def to_s
      stem
    end
  end
end