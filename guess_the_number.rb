def guess_number guess
    number = 25
    #traditional if statement
    if guess < number
        puts "Guess was too low"
        return "Guess was too low"
    end
    #unless statement
    unless guess <= number
        puts "Guess was too high"
        return "Guess was too high"
    #inline conditional
    end
    puts "You got it!" if guess == number
    return "You got it!"
end
guess_number 12
guess_number 36
guess_number 25
