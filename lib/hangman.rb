require File.expand_path("../random_word", __FILE__)
require File.expand_path("../text", __FILE__)


class Hangman
  def initialize
    @random_word = RandomWord.new
    #@random_word = "hello"
    @random_word_letters = @random_word.word.chars.to_a
    @bad_guesses_left = 10
    @bad_guess = []
    @good_guess = Array.new(@random_word_letters.count, "-")
    @text = Text.new
  end

  def play!
    puts "Hi from lib/hangman.rb!"
  end

  def ask_for_guess
    puts "What is your guess?"
    return gets.chomp.downcase
  end

  def show_current_word_status
    @text.print_current_word_status(@good_guess)
  end

  def find_letter(guess)
    index = 0
    letter_found = false

    @random_word_letters.each do |letter|
      if letter == guess
        @good_guess[index] = guess
        letter_found = true
      end
      index += 1
    end

    if letter_found == false
      @bad_guess << guess
    end

    return letter_found
  end

  def print_guessed_word
    @text.confirmation
  end

  def print_guesses
    @text.print_guesses_left(@bad_guess.count)
  end

  def guess_word(user_word)
    if @random_word.word == user_word
      puts "Congrats! #{@random_word.word} is the correct word!"
      return true
    else
      puts "Well, you suck!"
      @bad_guess << user_word
      return false
    end
  end

  def lose_game
    if @bad_guess.count >= 10
      @text.print_game_over
      return true
    else
      false
    end
  end
end
