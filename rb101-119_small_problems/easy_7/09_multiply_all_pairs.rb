def multiply_all_pairs(array1, array2)
  result = []
  array1.each {|element1| array2.each{|element2| result << element1 * element2}}
  result.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]