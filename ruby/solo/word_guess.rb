class Game
	def initialize
		@word = " "
		@guess_count = 0
		@game_end = false
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

end