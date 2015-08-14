#!/usr/bin/ruby -w
# def transpose(lis)
#   arr1 = []
#   arr2 = []

#   lis.each do |x, y|
#     arr1 << x
#     arr2 << y
#   end

#   puts arr1.inspect
#   puts arr2.inspect
# end
def transpose(arr)
    rows, columns = []
    rows, columns = arr.map {|x| x[0]}, arr.map {|y| y[1]}

    puts rows.inspect
    puts columns.inspect
    
end

arr = 
  [
    ['first', 'second'],
    ['third', 'fourth']
  ]

transpose(arr)
