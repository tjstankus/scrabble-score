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

  attr_reader :word

  def initialize(word)
    @word = word.to_s.strip.upcase
  end

  def score
    points = 0
    word.each_char do |c|
      LETTER_VALUES.each do |value, letters|
        points += value if letters.include?(c)
      end
    end
    points
  end
end
