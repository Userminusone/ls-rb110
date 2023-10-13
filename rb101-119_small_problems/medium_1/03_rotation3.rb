def rotate_array(array)
  length = array.length
  array.map.with_index {|_,idx| array[idx - length + 1]}
end

def rotate_rightmost_digits(number, count)
  chars = number.to_s.chars
  (chars[0...(-count)] + rotate_array(chars[(-count)..-1])).join('').to_i
end

def max_rotation(number)
  length = number.to_s.length
  (2..length).entries.reverse_each {|count| number = rotate_rightmost_digits(number, count)}
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845