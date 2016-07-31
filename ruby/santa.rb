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
	#age santa by ine year
	def celebrate_birthday
		@age = @age + 1
		p @age
	end
	def get_mad_at(reindeer_name)
		i = @reindeer_ranking.index(reindeer_name)
		@reindeer_ranking.insert(-1,@reindeer_ranking.delete_at(i))

	end
	def gender=(new_gender)
		@gender = new_gender
	end
	def age
		@age
	end
	def ethnicity
		@ethnicity
	end

end

#driver code to test class methods

nick = Santa.new("cis", "asian")
nick.gender = "male"
p nick.ethnicity
p nick.age
p nick.get_mad_at("Rudolph")
'''
nick.speak
nick.eat_milk_and_cookies("chocolate chip")
'''
'''
# driver code to create diverse santas
#empty array created to log santas into
santas = []
#arrays with random genders and ethnicities to assign to new santas
ran_gender = ["gender fluid", "intersex", "genderqueer", "trans woman", "other"]
ran_ethnicity = ["white", "black", "chinese", "korean", "other"]

eric = Santa.new("cis", "asian")
eric.celebrate_birthday

#loop that creates a new instance of santa for every type of
#ethnicity provided in ran_ethnicity array

ran_ethnicity.length.times do |i|
	santas << Santa.new( ran_gender[i], ran_ethnicity[i] )
	p santas.to_ary
end
'''
