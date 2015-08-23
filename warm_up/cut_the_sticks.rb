def cut_stick(sticks, count)
  puts count
  while sticks.count != 0
  smallest = sticks[0]

  sticks.each do |i|
    smallest = i if i < smallest
  end

  sticks.map! { |i| i - smallest}
  sticks.delete_if {|i| i <= 0}

  puts sticks.count if sticks.count > 0 
  end
end

stick_list = []

# # getting input
# count = gets.to_i
# stick_list = gets.chomp
# stick_list = stick_list.split(" ")
# stick_list = stick_list.collect { |s| s.to_i }

# for testing
stick_list = [1, 2, 3, 4, 3, 3, 2, 1]
#
cut_stick(stick_list, stick_list.count)

