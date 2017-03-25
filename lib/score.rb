class Score

  attr_accessor :good_guess, :bad_guess

  def initialize
    @good_guess = []
    @bad_guess = []
  end

  def tally
    if bad_guess.count < 10
      puts "#{bad_guess.count}"
    else puts "Game over!"
    end
  end
end
