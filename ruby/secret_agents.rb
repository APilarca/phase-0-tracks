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