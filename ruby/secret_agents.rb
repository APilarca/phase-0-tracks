# encrypt - moves one letter forward
    # determine input length for loop number
    # search alphabet string for index.
    # add 1 to index
    # return that letter(value)

# decrypt - moves one letter backwards
    # search alphabet string for index.
    # subtract 1 to index
    # return that letter(value)

def encrypt(input)
    new_value = 0
    new_password = ""
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    times_run = 0

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




def decrypt(input)
    new_value = 0
    new_password = ""
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    times_run = 0

    until times_run == input.length
        new_value = alphabet.index(input[times_run]) - 1
            if new_value < 0
                new_value = new_value + 26
            end
        new_password += alphabet[new_value]
        times_run += 1

    end
    puts "Your password is #{new_password}."
end

puts "Hello secret agent, would you like to encrypt or decrypt today?"
decision = gets.chomp

if decision == "encrypt"
    puts "Please enter password you would like to encrypt"
    password = gets.chomp
    encrypt(password)
elsif decision == "decrypt"
    puts "Please enter password you would like to decrypt"
    password = gets.chomp
    decrypt(password)
else 
    puts "Please re-enter"
    end