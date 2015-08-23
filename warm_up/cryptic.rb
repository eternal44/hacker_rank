def cryptic(n, s, k)
  adjust = k 

  adjust.times do
    count = 0
    s.each do |i|
      
      unless /[A-Za-z]/.match(i)
        count += 1
        next
      end

      if i == "z" 
        s[count] = "a"
        count += 1
      elsif i == "Z"
        s[count] = "A"
        count += 1
      else
        i = i.next
        s[count] = i
        count += 1
      end
    end
  end
  puts s.join
end

length = gets.chomp
word = gets.chomp.split("")
adjust = gets.to_i


cryptic(length, word, adjust)
