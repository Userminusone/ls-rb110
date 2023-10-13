def rotate_array(array)
  length = array.length
  array.map.with_index {|_,idx| array[idx - length + 1]}
end

def rotate_rightmost_digits(number, count)
  chars = number.to_s.chars
  (chars[0...(-count)] + rotate_array(chars[(-count)..-1])).join('').to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917