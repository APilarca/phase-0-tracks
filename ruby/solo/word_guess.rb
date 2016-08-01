class Game
	def initialize(word)
		@word = word
		@guess_count = 0
		@game_end = false
		@guessed_letters = []
	end
	def guesses(word)
		if word.length <= 5
			@guess_count = 3
		elsif word.length <= 10
			@guess_count = 5
		else
			@guess_count = 8
		end
	end

	def guess_tracker(letter)
		if @guessed_letters.include?(letter) == true
			@guess_count
		else
			@guessed_letters.push(letter)
			@guess_count -= 1
		end
	end

	def end_game
		if guess_count == 0
			@game_end = true
		else
			@game_end
		end
	end


end