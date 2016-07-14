# encrypt - moves one letter forward
    # determine input length for loop number
    # search alphabet string for index.
    # add 1 to index
    # return that letter(value)

# decrypt - moves one letter backwards
    # search alphabet string for index.
    # subtract 1 to index
    # return that letter(value)



until times_run == input.length

times_run = 0
alphabet = "abcdefghijklmnopqrstuvwxyz"
input = "abc"
new_password = ""
    new_value = 0

    new_value = alphabet.index(input[times_run]) + 1
    new_password += alphabet[new_value]
    times_run += 1
end
puts new_password
