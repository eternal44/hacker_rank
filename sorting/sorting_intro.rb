search_for = gets.to_i
array_size = gets.to_i
numbers_in_array = gets.split.map{|i| i.to_i}

puts numbers_in_array.index(search_for)



