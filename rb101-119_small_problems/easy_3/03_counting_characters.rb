def get_count(string)
  string.gsub(' ','').length
end

print "Please write word or multiple words: "
input = gets.chomp

puts "There are #{get_count(input)} characters in #{input.inspect}"