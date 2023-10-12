def stringy(number)
  result = ""
  current_digit = 1
  number.times do
    result << current_digit.to_s
    current_digit = 1 - current_digit
  end
  result
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'