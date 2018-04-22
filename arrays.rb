arr = [1,2,3,4,5,6,7,8,9,10]
arr2 = ["a", "b", "c", "d", "e", "f"]

#Using .at/.fetch
puts arr.at(3)
puts arr2.fetch(4)

#Using .delete to delete value
arr.delete(10)
puts arr

#Using .reverse!
arr2.reverse!
puts arr2

#Using .length
puts arr.length

#Using .sort
puts arr2.sort
puts arr2

#Using .slice
puts arr.slice(4)
puts arr.slice (1..4)

#Using .shuffle
puts arr2.shuffle

#Using .join
puts arr.join("-")

#Using .insert
puts arr.insert(9, 10)

#Using values_at()
puts arr.values_at(4)
puts arr2.values_at(1...5)