#create a hash for interior design
#log information into hash based on clients answers



def interior_design(project_name)
	project_name = {
		client_name:nil,
		age:nil,
		number_of_children:nil,
		theme:nil,
		pay_cash:nil,
	
	}

puts "Please enter your name: "
project_name[:client_name] = gets.chomp
puts "What is your age: "
project_name[:age] = gets.chomp.to_i
puts "Please enter your number of children: "
project_name[:number_of_children] = gets.chomp.to_i
puts "Please enter your desired theme: "
project_name[:theme] = gets.chomp
puts "wil you pay cash?"
project_name[:pay_cash] = gets.chomp
p project_name
puts "Is there any information you would like to update? If yes please type name of category you wish to update, if not please type 'none'"
answer = gets.chomp
if answer == "none"
	puts "Thank you for filling out this information!"
else
	puts "What is the updated information for this category?"
	project_name[answer.to_sym] = gets.chomp
	p project_name
end
end
#beginning of user interaction
puts "What would you like your project name to be?"
name = gets.chomp

interior_design(name)


