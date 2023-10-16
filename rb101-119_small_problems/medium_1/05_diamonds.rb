def diamond(size)
  size.times do |current_layer|
    pad_amount = (current_layer - size/2).abs
    star_amount = size - 2 * pad_amount
    puts ' ' * pad_amount + '*' * star_amount + ' ' * pad_amount
  end
end

puts 'diamond(1):'
diamond(1)

puts 'diamond(3):'
diamond(3)

puts 'diamond(9):'
diamond(9)