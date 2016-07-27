class TodoList
#initializes instance of TodoList with array as value
#array is inputted by user
	def initialize(array)
    @arr = array
  end
#retrieves items that are inside of array
#prints items as array
  def get_items
    @arr.to_a
  end
#adds inputted items to an array
#by pushing into existing array
  def add_item(item)
  	@arr.push(item)
  end
#removes unwanted item from array
#by tying item name
  def delete_item(unwanted)
    @arr.delete(unwanted)
  end
 #searches array for item using index number
  def get_item(index_num)
    @arr.fetch(index_num)
  end

end

