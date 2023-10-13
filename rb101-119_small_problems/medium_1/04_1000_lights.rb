def remaining_lights(number)
  lights = ((-number)..-1).entries.reverse
  lights.each do |num|
    abs_num = num.abs
    (1..(number / abs_num)).each {|n| lights[abs_num * n - 1] = -lights[abs_num * n - 1]}
  end
  lights.select {|value| value > 0}
end

p remaining_lights(5) == [1, 4]
p remaining_lights(10) == [1, 4, 9]
p remaining_lights(1000)