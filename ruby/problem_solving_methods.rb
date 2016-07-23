
#returns array of terms
#loop and add array index to next



def fib(number)
	i = 0
	arr = [0,1]
	while arr.length < number 
		arr << arr[i] + arr[i+1]
		i+=1
	end
return arr
end


#if number in array is greater than next, swap numbers in array
#continue to swap until array is ordered least greatest

def bubble(array)
	until switched = false
	i = 0
	while i < array.length-1
		if array[i] > array [i+1]
			array[i], array [i+1] = array [i+1], array[i]
			switched = true
		end
		i += 1 
	end 
	break if not switched
	end
	array
end
	
arr = [34, 57, 23]
bubble(arr)
