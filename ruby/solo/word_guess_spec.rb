require_relative 'word_guess'

describe Game do
	let(:word) {Game.new}

	it "determines how many guesses user gets" do
		expect(word.guesses("happened")).to eq 5
	end

	it "checks for repeated guesses, logs if guess is new, adds to guess count" do
		expect(word.guess_tracker("a")).to eq ["a"]
	end
end