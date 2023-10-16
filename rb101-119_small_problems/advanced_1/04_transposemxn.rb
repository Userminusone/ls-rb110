def transpose(matrix)
  row_count = matrix.length
  column_count = matrix.first.length
  result = []
  column_count.times do |column_idx|
    result << []
    row_count.times do |row_idx|
      result[column_idx] << matrix[row_idx][column_idx]
    end
  end
  result
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]