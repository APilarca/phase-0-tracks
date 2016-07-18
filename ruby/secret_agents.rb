# encrypt - moves one letter forward
    # determine input length for loop number
    # search alphabet string for index.
    # add 1 to index
    # return that letter(value)

# decrypt - moves one letter backwards
    # search alphabet string for index.
    # subtract 1 to index
    # return that letter(value)

times_run = 0
alphabet = "abcdefghijklmnopqrstuvwxyz"
input = "abc"


 until times_run == input.length
        new_value = alphabet.index(input[times_run]) + 1
            if new_value > 25
                new_value = new_value - 26
            end
        new_password += alphabet[new_value]
        times_run += 1

    end
    puts "Your encrypted password is #{new_password}."
end
