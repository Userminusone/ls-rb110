def find_fibonacci_index_by_length(length)
  prev_number = 0
  cur_number = 1
  index = 1
  loop do
    break if cur_number.digits.length == length
    prev_number, cur_number = cur_number, (cur_number + prev_number)
    index += 1
  end
  index
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847