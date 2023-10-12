CHARS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(number)
  result = ''
  while number > 0 || result.length == 0
    result.prepend(CHARS[number % 10])
    number /= 10
  end
  result
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'