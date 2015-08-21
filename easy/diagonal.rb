def diagonal(matrix)
  rows = matrix.count
  count = 0
  first_sum = 0
  second_sum = 0

  matrix.each do |row|
    first_sum += row[count]
    break if count == rows - 1 # To start second loop on last item
    count += 1
  end

  matrix.each do |row|
    second_sum += row[count]
    count -= 1
  end

   puts (first_sum - second_sum).abs
end

lis = []

t = gets.to_i

t.times do
  row = gets.split(" ").map(&:to_i)
  lis << row
end

diagonal(lis)
