def triangle(a, b, c)
  sides = [a, b, c].sort
  return :invalid if sides[0] == 0
  return :invalid unless (sides[0] + sides[1]) > sides[2]
  return :equilateral if sides[0] == sides[2]
  return :isosceles if sides[0] == sides[1]
  return :isosceles if sides[1] == sides[2]
  :scalene
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid