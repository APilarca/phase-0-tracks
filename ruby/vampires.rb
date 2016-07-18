
puts "How many users will be surveyed today?"
users = gets.chomp.to_i
i = 0
while i < users do
	puts "What is your name?"
	name = gets.chomp
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "What year were you born?"
	birth_year = gets.chomp.to_i
	puts "Our cafeteria serves garlic bread. Should we order you some(y/n)?"
	garlic = gets.chomp
	puts "Would you like to enroll in the company health insurance(y/n)?"
	insurance = gets.chomp
	
	
	# if age is correct 
	#AND willing to eat garlic OR get insurance = probably not
	#if age is wrong, hates garlic bread ANDno insurance
	# = almost certainly
	#EVEN THOUGH passes if name = "Drake Cula" or "Tu Fang" = Definitely
	#Otherwise "Results inconclusive"
	
	if 2016-birth_year == (age || age - 1)
		age = true
	else
		age = false
	end
	
	if garlic == "y"
		garlic = true
	else
		garlic = false
	end
	
	if insurance == "y"
		insurance = true
	else
		insurance = false
	end
	puts name
	puts age
	puts birth_year
	puts garlic
	puts insurance
	
	
	result = ""
	if age == true && (garlic == true || insurance == true)
		result = "Probably not a vampire"
	end
	if age == false && (garlic == false || insurance == false)
		result = "Probably a vampire"
	end
	if age == false && garlic == false && insurance == false
		result = "Almost certainly a vampire"
	end
	if name == ("Drake Cula" || "Tu Fang")
		result = "Definitely a Vampire"
	end
	if result == ""
		result = "Results inconclusive"
	else result = result
	end
	puts result
	i+=1
end
	
