# Shift last item once to lef

array = ("2 4 6 8 3").split.map{|i| i.to_i}
inspected_index = array.index(array.last)
comparable = array.last


array.each do |i|
  line = ""
  array[inspected_index] = array[inspected_index - 1]

  if array[inspected_index] < comparable
    array[1] = comparable
    array.collect { |x| x.to_s }
    array.each { |y| line += "#{y} "}
    puts line
    break
  end

  inspected_index -= 1
  array.collect { |x| x.to_s }
  array.each { |y| line += "#{y} "}
  puts line
end


# # Shift last item once to lef
# def  insertionSort( ar)
#   array = ar
#   array = ("2 4 6 8 3").split.map{|i| i.to_i}
#   inspected_index = array.index(array.last)
#   comparable = array.last

#   array.each do |i|
#     array[inspected_index] = array[inspected_index - 1]

#     if array[inspected_index] < comparable
#       array[1] = comparable
#       puts array.join(" ").inspect
#       break
#     end
#     inspected_index -= 1
#     puts array.join(" ").inspect
#   end
# end

# count = gets.to_i
# ar = gets.strip.split.map {|i| i.to_i}

# insertionSort( ar )
