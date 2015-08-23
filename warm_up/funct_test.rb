
# Long Version
def factorial(n)
  if n == 0
    return 1
  else 
    return n*factorial(n-1)
  end
end

# def factorial(n)
#   n == 0? 1 : n*factorial(n-1)
# end

n = gets.to_i
puts factorial(n)

