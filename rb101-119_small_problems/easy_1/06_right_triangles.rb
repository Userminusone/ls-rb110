def triangle(side_length)
  side_length.times do |layer| 
    puts "#{' ' * (side_length - layer - 1)}#{'*' * (layer + 1)}"
  end
end

triangle(5)

triangle(9)