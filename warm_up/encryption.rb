def encryption(input)
  input = input.split(" ").join
  rows_count =  Math.sqrt(input.size).floor
  columns_count =  Math.sqrt(input.size).ceil
  staging_table = []

  input = input.split("")
  while input.count > 0
    staging_table << input.slice!(0, columns_count)
  end

  output_table = []

  columns_place = 0
  rows_place = 0
  columns_count.times do
    columns_place = 0
    final_table = Array.new(rows_count, [])

    rows_count.times do
      final_table[columns_place] = staging_table[columns_place][rows_place]
      columns_place += 1
    end
    rows_place += 1
    output_table << final_table
  end
  output_line = ""
  output_table.each do |x|
    output_line += x.join + " "
  end
  puts output_line.chomp
end
input = "haveaniceday"
encryption(input)


