#requrie gems
require 'sqlite3'

#create database
data = SQLite3::Database.new("list.db")
data.results_as_hash = true

#create database if doesn't exist
create_table = <<-SQL
CREATE TABLE IF NOT EXISTS list(
id INTEGER PRMARY KEY,
name VARCHAR(255),
fragile BOOLEAN,
bag VARCHAR(255)
)
SQL

data.execute(create_table)

def create_list_item(data)
	new_item = {
		:name => nil,
		:fragile => nil,
		:bag => nil
	}
	puts "What item would you like to add?"
	new_item[:name] = gets.chomp
	puts "Is this item fragile?(true or false)"
	new_item[:fragile] = gets.chomp
	puts "Which bag would you like to pack this item in?"
	new_item[:bag] = gets.chomp

	data.execute("INSERT INTO list (name, fragile, bag) VALUES (?, ?, ?)", [new_item[:name], new_item[:fragile], new_item[:bag]])
	puts "Would you like to enter another item?(Type done to finish)"
	$answer = gets.chomp
end


puts "Hello! Going on a trip? Create your travel list here!"
create_list_item(data)

while $answer != "done"
	create_list_item(data)
end
	
puts"Thank you for using our services"
listed = data.execute("SELECT * FROM list")
listed.each do |item|
	puts "#{item['name']} is fragile = #{item['fragile']} and is packed in #{item['bag']}"
end