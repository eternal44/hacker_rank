def encryption(input)
  # inf_count = 0
  input = input.split(" ").join
  rows_count =  Math.sqrt(input.size).floor
  columns_count =  Math.sqrt(input.size).ceil
  # puts input.scan(/.{#{rows}}/)
  # puts input.scan(/.{#{rows}}/)
  first_table = []

  input = input.split("")
  while input.count > 0
    first_table << input.slice!(0, columns_count)
  end

  final_table = Array.new(rows_count, [])

  columns_place = 0
  rows_count.times do
    rows_place = 0
    final_table[columns_place] = first_table[columns_place][rows_place]
    columns_place += 1
    rows_count.times do 
      # columns
    end
  end

  puts final_table.inspect
  # exit if inf_count == 100
end
input = "if man was meant to stay on the ground god would have given us roots"
encryption(input)

# def transpose(before)
#   before_row_count = before.count
#   before_col_count = before[0].count

#   after = Array.new(before_col_count, [])

#   before_row_count.times do |i|
#     before_col_count.times do |j|
#       after[j][i] = before[i][j]
#     end
#   end

#   after
# end

# puts transpose([
#   ['first', 'second'],
#   ['third', 'fourth']
# ]
#               ).inspect
#               [["first", "third"], ["second", "fourth"]]

              # puts transpose([
              # ['0-0', '0-1', '0-2'],
              # ['1-0', '1-1', '1-2']
              # ]
              # ).inspect
              # [["0-0", "1-0"], ["0-1", "1-1"], ["0-2", "1-2"]]
