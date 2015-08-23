def tree_growth(y)
  y.each do |x|
    height = 1
    count = x
    
    count += 1 if x % 2 == 0

    x.times do
      if count % 2 == 1
        count -= 1
        height *= 2
      else
        count -= 1
        height += 1
      end
    end

    puts height
  end
end


cases = gets.to_i

cycles_list = []

cases.times do
  cycles_list << gets.to_i
end

tree_growth(cycles_list)
