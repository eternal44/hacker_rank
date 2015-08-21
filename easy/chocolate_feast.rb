t = gets.to_i

t.times do
  (n, c, m) = gets.split.map{|i| i.to_i}
  total_bars = n / c

  new_bars = total_bars / m
  total_wrappers = total_bars % m
  total_wrappers += new_bars
  total_bars += new_bars

  total_wrappers >= m  ? total_bars += (total_wrappers / m) : nil

  puts total_bars
end
