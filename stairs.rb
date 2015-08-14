def stairs(t)
  blanks = t
  steps = 0

  t.times do
    blanks -= 1
    steps += 1

    puts  " " * blanks +  "#" * steps
  end
end

t = gets.to_i
stairs(t)
