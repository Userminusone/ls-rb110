def buy_fruit(array)
  array.map {|subarray| [subarray[0]] * subarray[1]}.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]