def find_digits(lis)
    lis.each do |k, v|
      count = 0
      v.each do |i|
        if i == 0
          next
        elsif k % i == 0
          count += 1 
        else
          next
        end
      end
      puts count
    end
end

lis = {} 
numbers = []

no_of_cases = gets.to_i
no_of_cases.times do
  numbers << gets.to_i
end

numbers.each do |i| 
  lis[i] = i.to_s.chars.map(&:to_i)
end

find_digits(lis)



