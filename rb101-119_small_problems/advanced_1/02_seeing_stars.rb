def star(size)
  halfsize = size / 2
  halfsize.times do |first_padding|
    second_padding = halfsize - first_padding - 1
    puts ' ' * first_padding + '*' + ' ' * second_padding + '*' + ' ' * second_padding + '*' + ' ' * first_padding
  end
  puts '*' * size
  halfsize.times do |second_padding|
    first_padding = halfsize - second_padding - 1
    puts ' ' * first_padding + '*' + ' ' * second_padding + '*' + ' ' * second_padding + '*' + ' ' * first_padding
  end
end

puts 'star(5):'
star(5)

puts 'star(7):'
star(7)

puts 'star(9):'
star(9)

puts 'star(11):'
star(11)