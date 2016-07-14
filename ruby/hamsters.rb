#prompt for the hamsters name
#prompt for the volume level of hamster
#prompt for the fur color
#prompt for whether good candidate for adoption
#prompt for the estimated age, which could be nil
#all data to be saved in appropriate variables



puts "What is the name of your hamster?"
hamster_name = gets.chomp
puts "On a scale of 1 to 10, 10 being the loudest, how loud is the hasmter?"
volume_level = gets.chomp.to_i
puts "What is the hamsters fur color?"
color = gets.chomp
puts "Is the hamster a good candidate for adoption, yes or no?"
good_candidate = gets.chomp
	if good_candidate = "yes" 
		good_candidate = true
	else good_candidate = false
	end
puts "What is the estimate age of the hamster?"
age = gets.chomp.to_f
#if left blank changes value to nothing
	if age = nil
		input = ""
	else
		input = age
	end
#displaying information back to clerk
puts "name of hamster: #{hamster_name}\n 
hamster volume level: #{volume_level}\n 
fur color: #{color}\n 
good candidate for adoption: #{good_candidate}\n
age: #{age}"