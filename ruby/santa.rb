class Santa
	#prints message when new isntance of santa
	#is created
	def initialize
		puts "Initializing Santa instance..."
	end
	#enables out santa to spread holiday cheer
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	#allows santa to compliment sustenance
	#given to him
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end
end

#driver code to test class methods
nick = Santa.new
nick.speak
nick.eat_milk_and_cookies("chocolate chip")
