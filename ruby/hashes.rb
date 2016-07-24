#prompt user to enter information
#use symbols for itemss in hash
#convert data to appropriate type


interior_design = {
	:client_name=> "",
	:age=>"" ,
	:children=>"" ,
	:theme=>"" ,
	:time_allowed=>""
}

puts "Please enter your full name: "
:name = gets.chomp
puts "Please enter your age: "
:age = gets.chomp.to_i
puts "Do you have children: "
:children = gets.chomp.to_b
puts "Please enter your desired theme: "
:theme = gets.chomp
puts "Please enter the time frame you need your project completed in: "
:time = gets.chomp_i