arr = [1,2,3,4,5,6,7,8]
arr2 = ["cat", "dog", "bird", "hampster", "rat", "ferret"]

#Using .include?
puts arr.include?(4)
puts arr2.include?("dog")
puts (1...5).include?(6)

#Using .last
puts (1..5).last
puts (1...5).last
puts arr2.last

#Using max
puts arr.max
puts ("a".."z").max
puts arr2.max

#Using min
puts arr.min
puts ("a".."z").min
puts arr2.min