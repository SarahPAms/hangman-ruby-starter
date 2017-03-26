RSpec.describe Hangman do
  let(:hangman) { Hangman.new }
  let(:bad_guess) {:hangman.bad_guess}


  describe "#lose_game"do
    it "returns the value false" do
      expect(hangman.lose_game).to eq(true)
    end
  end
end
