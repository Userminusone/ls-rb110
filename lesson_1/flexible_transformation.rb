def multiply(array, value)
  new_array = []
  index = 0
  loop do
    break if index == array.size
    new_array << array[index] * value
    index += 1
  end
  new_array
end

p my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]