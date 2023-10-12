CHARS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(number)
  result = ''
  while number > 0 || result.length == 0
    result.prepend(CHARS[number % 10])
    number /= 10
  end
  result
end

def signed_integer_to_string(number)
  return '0' if number == 0
  return '-' + integer_to_string(-number) if number < 0
  '+' + integer_to_string(number)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'