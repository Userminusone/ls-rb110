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

def merge_sort(array)
  midpoint = array.length / 2
  array1 = array[0...midpoint]
  array1 = merge_sort(array1) if array1.length > 1
  array2 = array[midpoint..]
  array2 = merge_sort(array2) if array2.length > 1
  merge(array1, array2)
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]