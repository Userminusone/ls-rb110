SQ_METERS_TO_SQ_FEET = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width = gets.chomp.to_f
puts "The area of the room is #{length * width} square meters (#{length * width * SQ_METERS_TO_SQ_FEET} square feet)."