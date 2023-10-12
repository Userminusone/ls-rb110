print "What is the bill? "
bill = gets.chomp.to_f
print "What is the tip percentage? "
percentage = gets.chomp.to_f / 100

tip = bill * percentage

puts "The tip is $#{tip}"
puts "The total is $#{bill + tip}"