require File.expand_path("../random_word", __FILE__)
require File.expand_path("../score", __FILE__)

class Hangman
  def initialize
    #@random_word = RandomWord.new
    @random_word = "hello"
    @random_word_letters = @random_word.chars.to_a
    @bad_guesses_left = 10
    @bad_guess = []
    @good_guess = []
  end

  #def to_array
    #@random_word.chars.to_a
  #end

  def play!
    puts "Hi from lib/hangman.rb!"
  end

  def ask_for_guess
    puts "What letter do you guess?"
    guess = gets.chomp.downcase
  end

  def find_letter(guess)
      index = 0
    @random_word_letters.each do |letter|
      if letter == guess
        @good_guess[index] = guess
      else
        @bad_guess << guess
      end
      index += 1
    end
  end

  def print_guessed_word
    puts "#{@good_guess}"
  end
end

hangman = Hangman.new

hangman.play!
hangman.find_letter("h")
hangman.find_letter("l")
hangman.find_letter("o")
hangman.find_letter("e")
hangman.print_guessed_word
