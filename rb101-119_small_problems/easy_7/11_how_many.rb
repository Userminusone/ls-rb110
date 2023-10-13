def count_occurrences(array)
  result = Hash.new(0)
  array.each {|element| result[element] += 1}
  puts result.to_a.map {|array| array.join(' => ')}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)