ORDINALS = %w(1st 2nd 3rd 4th 5th)

entries = []

ORDINALS.each do |ordinal|
  puts "==> Enter the #{ordinal} number:"
  entries << gets.chomp.to_i
end

puts "==> Enter the last number:"
number = gets.chomp.to_i

puts "The number #{number} #{entries.include?(number) ? "appears" : "does not appear"} in #{entries}"