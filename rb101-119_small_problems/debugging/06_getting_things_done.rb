=begin
def move(n, from_array, to_array)
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

The above code doesn't work because it attempts to use recursion without providing a way for the recursion to stop. The move method will always invoke itself regardless of the values of its parameters, resulting in infinite recursion.

To fix this, we simply have to add a conditional statement that ensures that move only invokes itself if n is above 0.
=end

def move(n, from_array, to_array)
  if n > 0
    to_array << from_array.shift
    move(n - 1, from_array, to_array)
  end
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']