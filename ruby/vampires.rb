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

if 2016 - birth_year = age || age - 1
	age = true
else
	age = false
end

if garlic == "y"
	garlic = true
else
	garlic = false
end

if insurance = "y"
	insurance = true
else
	insurance = false
end

result = ""
if age = true && (garlic = true || insurance = true)
	result = "Probably not a vampire"
elsif age = false && (garlic = false || insurance = false)
	result = "Probably a vampire"
elsif age = false && garlic = false && insurance = false
	result = "Almost certainly a vampire"
elsif name = "Drake Cula" || "Tu Fang"
	result = "Definitely a Vampire"
else
	result = "Results inconclusive"
end
puts result