def fee(actual, expected)
  if  actual[2] > expected[2]
    fine = 10_000

  elsif actual[1] > expected[1] && actual[2] >= expected[2]
    fine = (actual[1] - expected[1]) * 500

  elsif actual[0] > expected[0] && actual[1] >= expected[1] && actual[2] >= expected[2]
    fine = (actual[0] - expected[0]) * 15

  else
    fine = 0
  end

  puts fine
end


  t = "28 2 2015"
  y = "15 4 2015"
  t = t.split(" ").map(&:to_i)
  y =  y.split(" ").map(&:to_i)

  fee(t,y)
  # puts t.inspect
  # puts y.inspect
