def conv_time(t)
  if (t[0] == "12") && (t[2].include? "PM")
    puts "noon"
    t[2] = t[2].delete "PM"
    puts "#{t[0]}:#{t[1]}:#{t[2]}"
  elsif t[2].include? "PM"
    puts "PM"
    t[2] = t[2].delete "PM"
    t[0] = t[0].to_i + 12
    puts "#{t[0]}:#{t[1]}:#{t[2]}"
  elsif (t[0] == "12") && (t[2].include? "AM")
    puts "midnight"
    t[0] = "00"
    t[2] = t[2].delete "AM"
    puts "#{t[0]}:#{t[1]}:#{t[2]}"
  else
    puts "AM"
    t[2] = t[2].delete "AM"
    puts "#{t[0]}:#{t[1]}:#{t[2]}"
  end
end

# t = gets.split(":")
# conv_time(t)

t = ["12:45:15PM", "12:45:15AM", "06:45:15PM", "06:45:15AM"]
t.each do |test|
  test = test.split(":")
  conv_time(test)
  # puts test.inspect
end


