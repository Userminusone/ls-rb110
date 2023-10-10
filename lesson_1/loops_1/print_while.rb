numbers = []

while numbers.size < 5
  numbers.unshift (rand * 100).to_i
  puts numbers.first
end