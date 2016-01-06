class Scrabble
  LETTER_VALUES = {
    1 => %w[A E I O U L N R S T],
    2 => %w[D G],
    3 => %w[B C M P],
    4 => %w[F H V W Y],
    5 => %w[K],
    8 => %w[J X],
    10 => %w[Q Z]
  }

  MULTIPLIERS = {
    single: 1,
    double: 2,
    triple: 3
  }

  def self.score(word)
    new(word).score
  end

  attr_reader :word, :multiplier

  def initialize(word, multiplier=:single)
    @word = word.to_s.strip.upcase
    @multiplier = MULTIPLIERS[multiplier]
  end

  def letter_values
    @letter_values ||= Hash.new.tap do |h|
      LETTER_VALUES.each do |value, letters|
        letters.each { |letter| h[letter] = value }
      end
    end
  end

  def score
    word.chars.reduce(0) { |memo, c| memo += letter_values[c] * multiplier }
  end
end
