# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # ask user for items on grocery list with quantity needed
  # input items and quantities
  # set default quantity to 1
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] data hash output

# Method to add an item to a list
# input: item name and optional quantity
# steps: gather data
# steps: input into hash
# output: print new hash

# Method to remove an item from the list
# input: designate item to be found and removed
# steps: find item within hash
# steps: delete item from hash
# output: modified hash

# Method to update the quantity of an item
# input: input new quantity
# steps: ask user if all quantities are correct
# steps: gather new quantity data
# steps: find item
# steps: replace quantity
# output: modified hash

# Method to print a list and make it look pretty
# input: hash
# steps: get hash
# steps: create loop for hash data
# steps: print off each hash item on individual line
# output: pretty version of hash



$grocery_list = {}
def create_list(items)
	items = items.split(" ")
	items.each do |item|
		$grocery_list[item] = 1
	end
	p $grocery_list.keys
end

def add_item(item, quantity)
	$grocery_list[item] = quantity
	p $grocery_list	
end

def remove_item(item)
	$grocery_list.delete(item)
	p $grocery_list
end

def update_quantity(item, quantity)
	$grocery_list[item] = quantity
	p $grocery_list
end

def print_pretty
	p "Don't forget these items! : "
	$grocery_list.each {|item, quantity|
	puts "You need #{quantity} #{item}"}
end
create_list("carrots apples oranges")
add_item("tomatoes", 5)
remove_item("potatoes")
update_quantity("carrots", 3)
print_pretty

