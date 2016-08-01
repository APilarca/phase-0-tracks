class Game
	attr_reader(:guess_count, :game_end)
	def initialize(word)
		@word = word
		@guess_count = 0
		@game_end = false
		@guessed_letters = [ ]
		@display = (@word.length-2).times.collect {"_"}.join(' ')
	end
		
	def guesses
		if @word.length <= 5
			@guess_count = 3
		elsif @word.length <= 10
			@guess_count = 5
		else
			@guess_count = 8
		end
	end

	def guess_tracker(letter)
		arr = @word.split("")
		if @guessed_letters.include?(letter) == true
			@guess_count
			puts "You already guessed that!"
			p @display
		elsif
			arr.index(letter) == nil
			@guessed_letters.push(letter)
			@guess_count -= 1
			puts "sorry that isn't in the word"
			p @display
		else
			num = arr.index(letter)
			@display[num] = letter
			p @display
		end
	end

	def end_game
		if guess_count == 0
			puts "Aw, poor player ran out of guesses"
			@game_end = true
		elsif @display.delete(' ') == @word
			puts "Congratulations!!!"
			@game_end = true
		else
			@game_end = false
		end
	end


end

puts "Welcome to the word guessing game!"
puts "Please enter a word you would like the player to guess: "
word_to_guess = gets.chomp
new_game = Game.new(word_to_guess)

new_game.guesses
puts "Okay player, you have #{new_game.guess_count} guesses to find the word"

while new_game.game_end == false
	puts "Please enter the letter you would like to guess"
	guess = gets.chomp
	new_game.guess_tracker(guess)
	new_game.end_game
end

puts "Thank you for playing!!!"
