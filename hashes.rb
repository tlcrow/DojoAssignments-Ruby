h = {:first_name => "Coding", :last_name => "Dojo", :city => "Seattle", :CEO => "Micheal Choi"}
h2 = {}

#Using .delete(key)
h.delete(:CEO)
puts h

#Using .empty?
puts h.empty?
puts h2.empty?

#Using .has_key?(key)
puts h.has_key?(:city)
puts h.has_key?(:CEO)

#Using .has_value?(value)
puts h.has_value?("Dojo")
puts h2.has_value?("Dojo")