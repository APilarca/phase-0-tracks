#prompt user to enter name
#create new name basing off old one
# -swap first and last name
# -change all vowels into next vowel in "aeiou"
# -all consonants into next in alphabet


def scramble(name)
	i = 0
	name = name.split
	name[0],name[1] = name[1],name[0]
	name = name.join(" ")
	p name

	name = name.gsub(/[aeiou]/, 'a'=>'e', 'e'=>'i','i'=>'o', 'o'=>'u', 'u'=>'a')
	p name
	if name.split != /[aeiou]/
	name.tr('a-y', 'b-z')
end
end

title = {
	first: "",
	new_name: ""
}

puts "Please enter a name"
title[:first] = gets.chomp
title[:new_name] = scramble(first)
puts "Your new name is #{new_name}"

puts "#{tile[:first]} is also known as #{title[:new_name]}"