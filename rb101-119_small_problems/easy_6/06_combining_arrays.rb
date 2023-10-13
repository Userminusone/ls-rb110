def merge(array1, array2)
  result = []
  array1.each {|element| result << element unless result.include?(element)}
  array2.each {|element| result << element unless result.include?(element)}
  result
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]