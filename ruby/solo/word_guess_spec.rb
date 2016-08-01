require_relative 'word_guess'

describe Game do
	let(:word) {Game.new}

	it "determines how many guesses user gets" do
		expect(word.guesses("happy")).to eq 3
	end
end