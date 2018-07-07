def divide(divided, divisor)
  divided/divisor
rescue ZeroDivisionError
  "Nie dziel przez zero"
rescue TypeError
  "Podałeś zły typ"
end

puts divide(3, 0)
puts divide(3, {})
