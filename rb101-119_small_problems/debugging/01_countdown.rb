=begin
def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  decrease(counter)
end

puts 'LAUNCH!'

The above code doesn't work because, in the decrease method, the parameter counter is reassigned to 1 below its current value, meaning when the decrease method is invoked on the counter variable defined in the main scope, the counter parameter within the scope of decrease no longer points to the same object as the counter variable within the main scope, so the counter variable within the main scope is never modified.

To fix this code, we rewrite the decrease method to return the value of counter - 1, and we reassign the local variable counter defined in the main scope to the invocation of decrease on counter, so that its value changes.
=end
def decrease(counter)
  counter - 1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'