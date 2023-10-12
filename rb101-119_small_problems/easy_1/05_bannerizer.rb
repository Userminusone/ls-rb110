def print_in_box(string)
  puts "+-#{'-' * string.length}-+"
  puts "| #{' ' * string.length} |"
  puts "| #{string} |"
  puts "| #{' ' * string.length} |"
  puts "+-#{'-' * string.length}-+"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box('Hello, world!')