def big_sum(lis)
  sum = 0

  lis.each do |i|
    sum += i.to_i
  end

  return sum
end

t.gets.to_i
  lis = gets.split(" ")
  res = big_sum(lis)
  puts res

