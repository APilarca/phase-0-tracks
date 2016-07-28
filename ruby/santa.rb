class Santa
	

	#prints message when new isntance of santa
	#is created
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer","Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
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
'''
nick = Santa.new
nick.speak
nick.eat_milk_and_cookies("chocolate chip")
'''
# driver code wto create diverse santas
#empty array created to log santas into
santas = []

#arrays with random genders and ethnicities to assign to new santas
ran_gender = ["gender fluid", "intersex", "genderqueer", "trans woman", "other"]
ran_ethnicity = ["white", "black", "chinese", "korean", "other"]

'''
eric = Santa.new("cis","asian")
p eric
'''
#loop that creates a new instance of santa for every type of
#ethnicity provided in ran_ethnicity array
ran_ethnicity.length.times do |i|
	santas << Santa.new( ran_gender[i], ran_ethnicity[i] )
	p santas.to_ary
end

#continue on setter and getter video