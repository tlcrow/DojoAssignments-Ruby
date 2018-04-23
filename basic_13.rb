#Write a program that would print all the numbers from 1 to 255
def print_all
    for i in 1..255
        puts i
    end
end
print_all

#Write a program that would print all the odd numbers from 1 to 255
def print_odd
    for i in 1..255
        puts i if i % 2 != 0
    end
end
print_odd

#Write a program that would print the numbers from 0 - 255 and print the sum of the numbers that have been printed so far
def print_sum
    count = 0
    for i in 1..255
    count = count + i
        puts "New number: #{i}, Sum #{count}"
    end
end
print_sum

#Given an array X, say [1,3,5,7,9,13], write a program that would iterate through each member of the array and print each value on the screen
def array_print arr
    for i in arr
        puts i
    end
end
array_print [1,3,5,7,9,13]

#Write a program that takes any array and prints the maximum value in the array
def print_max arr
    puts arr.max
end
print_max [4,7,2,1,6]
print_max [-1,-4,-3,-5]

#Write a program that takes an array, and prints the average of the values in the array.
def print_average arr
    sum = 0
    for i in arr
        sum = sum + i
    end
    puts sum/arr.length
end
print_average [2, 10, 3]

#Write a program that creates an array 'y'that contains all the odd numbers betwen 1 to 255.
def array_odd
    arr = []
    for i in 1..255
        arr.push(i) if i % 2 != 0
    end
    puts arr
end
array_odd

#Write a program that takes an array and returns the number of values in that array whose value is greater than a given value y
def greater arr, value
    puts arr.count{|x| x > value}
    return arr.count{|x| x > value}
end
greater [1,2,3,4,5,6], 3

#Given any array x, say [1,5,10,-2], create a program that multiplies each value in the array by itself.
def square arr 
    arr.map! {|num| num ** 2}
    puts arr
end
square [1,5,10,-2]

#Given any array x, say [1,5,10,-2], create a program that replaces any negative number with the value of 0.
def replace_zero arr
    arr.map! {|num| num < 0 ? 0 : num}
    puts arr
end
replace_zero [1,5,10,-2]

#Given any array x, say [1,5,10,-2], create a program that returns a hash with a with the maximum number in the array, the minimum value in the array, and the average of the values in the array
def max_min_average arr
    count = 0;
    for i in arr
        count = count + 1
    end
    values = Hash.new
    values["max"] = arr.max
    values["min"] = arr.min
    values["average"] = count/arr.length
    puts values
end
max_min_average [1,5,10,-2]

#Given any array x, say [1,5,10,7,-2], create a program that shifts each number by one to the front.
def array_shift arr
    arr.shift
    arr.push(0)
    puts arr
end
array_shift [1,5,10,7,-2]

#Write a program that takes an array of numbers and replaces any negative number with the string 'Dojo.
def replace_string arr
    arr.map! {|num| num < 0 ? 'Dojo' : num}
    puts arr
end
replace_string [1,5,10,-2]