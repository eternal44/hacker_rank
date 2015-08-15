# def encryption(input)
#   # inf_count = 0
#   input = input.split(" ").join
#   rows_count =  Math.sqrt(input.size).floor
#   columns_count =  Math.sqrt(input.size).ceil
#   # puts input.scan(/.{#{rows}}/)
#   # puts input.scan(/.{#{rows}}/)
#   first_table = []

#   input = input.split("")
#   while input.count > 0
#     first_table << input.slice!(0, columns_count)
#   end

#   final_table = Array.new(rows_count, [])
#   row_holder = []

#   first_table[0].each do |x|
#     final_table.each do |y|
#       y << x
#       break

#     end
#   end
#   end

  # final_table[2] = row_holder
  # final_table.each {|x| puts x.inspect}
  # puts final_table[0][0].inspect
  # puts final_table[0].inspect

  # puts row_holder.inspect

  # exit if inf_count == 100
# input = "if man was meant to stay on the ground god would have given us roots"

def encryption(input)
  # inf_count = 0
  input = input.split(" ").join
  rows_count =  Math.sqrt(input.size).floor
  columns_count =  Math.sqrt(input.size).ceil
  first_table = []

  input = input.split("")
  while input.count > 0
    first_table << input.slice!(0, columns_count)
  end
  

  final_table = Array.new(rows_count, [])

  columns_place = 0
  rows_place = 0
  output_table = []

  rows_count.times do
    output_table << final_table
    # rows_place += 1
  end
  rows_count.times do
    final_table[columns_place] = first_table[columns_place][rows_place]
    columns_place += 1
  end


  # puts output_table[0].inspect
  output_table.each {|x| puts x.inspect}
  # puts output_table.inspect
  # exit if inf_count == 100
end
input = "if man was meant to stay on the ground god would have given us roots"
encryption(input)


