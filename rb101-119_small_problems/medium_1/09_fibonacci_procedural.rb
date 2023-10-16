def fibonacci(n)
  prev = 1
  cur = 0
  n.times do
   prev, cur = cur, cur + prev
  end
  cur
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501