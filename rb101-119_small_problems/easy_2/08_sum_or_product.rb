LABELS = {s: "sum", p: "product"}
METHODS = {s: :+, p: :*}
INITIAL_VALUES = {s: 0, p: 1}
VALID_COMPUTATIONS = [:s, :p]

user_integer = nil
loop do
  puts ">> Please enter an integer greater than 0:"
  user_integer = gets.chomp.to_i
  break if user_integer > 0
  puts ">> That's not greater than 0! Try again."
end

user_computation = nil
loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  user_computation = gets.chomp.to_sym
  break if VALID_COMPUTATIONS.include?(user_computation)
  puts ">> Sorry, that's not a valid choice. Choose 'p' or 's'"
end

puts "The #{LABELS[user_computation]} of the integers between 1 and #{user_integer} is #{(1..user_integer).inject(INITIAL_VALUES[user_computation], METHODS[user_computation])}"