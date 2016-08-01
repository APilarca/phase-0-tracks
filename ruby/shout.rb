'''
module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "!!!" + " :)"
	end
end

p Shout.yell_angrily("what")
p Shout.yelling_happily("yippee")
'''
module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(words)
		words + "!!!" + " :)"
	end
end

class People
	include Shout
end

class Alien
	include Shout
end

people = People.new
p people.yell_angrily("what")
p people.yelling_happily("a day off")

alien = Alien.new
p alien.yelling_happily("world domination")
p alien.yell_angrily("no water")