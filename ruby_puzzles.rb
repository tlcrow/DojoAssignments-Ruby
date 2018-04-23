#Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. Also have the function return an array that only include numbers that are greater than 10 (e.g. when you pass the array above, it should return an array with the values of 13,25,32)
def puzzle_1 arr
    for i in arr
        puts i
    end
    arr.reject! {|num| num < 10}
    puts arr
end
puzzle_1 [3,5,1,2,7,9,8,13,25,32]

#Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.
def puzzle_2 
    newArr = []
    arr = ["John", "KB", "Oliver", "Cory", "Matthew", "Christoper"]
    arr.shuffle!
    for i in arr
        puts i
        newArr << i if i.length > 5
    end
    puts newArr
end
puzzle_2

#Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. If the first letter in the array is a vowel, have it display a message.
def puzzle_3
    arr = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    arr.shuffle!
    puts arr.last
    puts arr.first
    puts "First letter is a vowel" if arr[0] == "a" || arr[0] == "e" || arr[0] == "i" || arr[0] == "o" || arr[0] == "u"
end
puzzle_3

#Generate an array with 10 random numbers between 55-100.
def puzzle_4
    puts 10.times.map{ 55 + Random.rand(46) }
end
puzzle_4

#Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning). Display all the numbers in the array. Next, display the minimum value in the array as well as the maximum value
def puzzle_5
    arr = 10.times.map{ 55 + Random.rand(46) }
     puts arr.sort!
     puts arr.first
     puts arr.last
end
puzzle_5

#Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)
def puzzle_6
    str = (0...5).map{ (65+rand(26)).chr }.join
    puts str
end
puzzle_6

#Generate an array with 10 random strings that are each 5 characters long
def puzzle_7
    arr = []
    for i in 0...10
        str = (0...5).map{ (65+rand(26)).chr }.join
        arr << str
    end
    puts arr
end
puzzle_7
