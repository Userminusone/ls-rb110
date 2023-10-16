def triangle(a, b, c)
  angles = [a, b, c]
  return :invalid if angles.min == 0
  return :invalid unless angles.sum == 180
  max = angles.max
  return :acute if max < 90
  return :right if max == 90
  :obtuse
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid