def merge(array1, array2)
  result = []
  pointer1 = 0
  pointer2 = 0
  loop do
    break if pointer1 == array1.size || pointer2 == array2.size
    value1 = array1[pointer1]
    value2 = array2[pointer2]
    if value1 < value2
      result << value1
      pointer1 += 1
    else
      result << value2
      pointer2 += 1
    end
  end

  while pointer1 < array1.size
    result << array1[pointer1]
    pointer1 += 1
  end

  while pointer2 < array2.size
    result << array2[pointer2]
    pointer2 += 1
  end
  result
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]