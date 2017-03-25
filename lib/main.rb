require File.expand_path("../hangman.rb", __FILE__)
require File.expand_path("../text.rb", __FILE__)

hangman = Hangman.new
user_messages = Text.new

game_over = false


  while not game_over
    hangman.show_current_word_status
    
    puts "What would you like to do?"
    puts "1. Guess a letter"
    puts "2. Guess a word"
    puts "3. Exit"

    choice = gets.chomp.to_i

    case choice
      when 1
        puts "letter functionality"
        letter = hangman.ask_for_guess
        letter_found = hangman.find_letter(letter)
          if letter_found == true
            hangman.print_guessed_word
          else
            user_messages.wrong_answer_response
            hangman.print_guesses
          end

      when 2
        puts "word functionality"
        user_word = hangman.ask_for_guess
        game_over = hangman.guess_word(user_word)
          if game_over == false
            user_messages.wrong_answer_response
            hangman.print_guesses
          end

      when 3
        game_over = true
      else
        puts "I don't understand"
    end
      if game_over
        puts "See you next time!"
      end
      game_over = hangman.lose_game
  end
