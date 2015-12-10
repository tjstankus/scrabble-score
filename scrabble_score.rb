class Scrabble
  LETTER_VALUES = {
    1 => %w[A E I O U L N R S T]
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
