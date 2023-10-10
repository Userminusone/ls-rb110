loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break # break out of the inner loop after one iteration
  end
  break # break out of the outer loop after one iteration
end

puts 'This is outside all loops.'