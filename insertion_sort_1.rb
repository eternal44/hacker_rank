# Shift last item once to lef

array = ("2 4 6 8 3").split.map{|i| i.to_i}
number_to_sort = array.index(array.last)

puts array[4 - 0] = array[4 - 1]

puts array.inspect

