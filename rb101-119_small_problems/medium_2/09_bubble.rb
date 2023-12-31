def bubble_sort!(array)
  (0..(array.length - 2)).entries.reverse_each do |max_value|
    (0..max_value).each do |idx|
      array[idx], array[idx + 1] = array[idx + 1], array[idx] unless array[idx] < array[idx + 1]
    end
  end
  array
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)