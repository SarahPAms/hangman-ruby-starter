class RandomWord
  attr_reader :word

  WORDS = %w(programming monkeybusiness rubyesque styleguide)

  def initialize
    @word = WORDS.sample
  end

  def word_length
    return @word.count
  end

  def set_good_guess
    @good_guess = Array.new(word_length, "-")
  end


end
