OPERATIONS = [:+, :-, :*, :/, :%, :**]

puts "==> Enter the first number:"
first = gets.chomp.to_i
puts "==> Enter the second number:"
second = gets.chomp.to_i

OPERATIONS.each {|operation| puts "#{first} #{operation} #{second} = #{operation.to_proc.call(first, second)}"}