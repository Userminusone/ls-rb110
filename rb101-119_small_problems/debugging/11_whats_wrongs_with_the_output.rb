=begin
arr = ["9", "8", "7", "10", "11"]
p arr.sort do |x, y|
    y.to_i <=> x.to_i
  end

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 

This code doesn't work because of the way operator precedence works in ruby. In ruby, do..end blocks have the lowest precedence, meaning in this code, the invocation of p will take arr.sort as its input, and the do..end block will be ignored.

To fix this, we simply place parenthesis around the invocation of sort on arr with the subsequent do..end block so that the do..end block is used in the invocation of sort before the sorted array is printed via the invocation of p.

=end

arr = ["9", "8", "7", "10", "11"]
p (arr.sort do |x, y|
    y.to_i <=> x.to_i
  end)

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 