def sort(lis)
  ps_qty = 0
  ng_qty = 0
  zero_qty = 0
  total_qty = lis.count

  lis.each do |i|
    if i > 0
      ps_qty += 1
    elsif i < 0
      ng_qty += 1
    else
      zero_qty += 1
    end
  end

  p = ps_qty/total_qty.to_f
  n = ng_qty/total_qty.to_f
  z = zero_qty/total_qty.to_f

  puts p.round(3)
  puts n.round(3)
  puts z.round(3)
  
end

lis = gets.strip.split(" ").map(&:to_i)

sort(lis)
