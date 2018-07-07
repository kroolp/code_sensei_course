def factorial(n)
  result = 1
  n.times { |i| result *= i + 1 }

  result
end

def factorial2(n)
  n == 0 ? 1 : n * factorial2(n - 1)
end

puts factorial(4)
puts factorial2(5)
