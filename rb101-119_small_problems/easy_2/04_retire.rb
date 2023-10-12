require 'date'

CURRENT_YEAR = Date.today.year

print "What is your age? "
age = gets.chomp.to_i
print "At what age would you like to retire? "
retiring_age = gets.chomp.to_i
years_to_retire = retiring_age - age

puts "It's #{CURRENT_YEAR}. You will retire in #{CURRENT_YEAR + years_to_retire}."
puts "You have only #{years_to_retire} years of work to go!"