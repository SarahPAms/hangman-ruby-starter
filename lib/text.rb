class Text

  def print_current_word_status(good_guess)
    good_guess.each { |letter| print " #{letter}"}
    puts "\n*****************"
  end
  def wrong_answer_response
    puts "That sucks, your guess is incorrect"
  end

  def print_guesses_left(bad_guess_count)
    puts "You have #{10 - bad_guess_count} left! "
  end

  def print_game_over
    puts "Wah wah whah whah! You lose!"
  end

  def confirmation
    puts "Well done!"
  end
end
