def my_method(array)
  if array.empty?
    []
=begin
    The following code was originally buggy because there was no condition after the elsif keyword, meaning that the return value of array.map was used to determine whether the code in the elsif block should run. 
    Since there is no code after the array.map statement in the elsif block, the entire if statement returns nil, which causes the whole method to return nil.

    By adding the necessary condition array.length > 1, this problem goes away, as the following array.map statement is within the elsif block and its return value is used as the return value for the whole if statement.
=end
  elsif array.length > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])