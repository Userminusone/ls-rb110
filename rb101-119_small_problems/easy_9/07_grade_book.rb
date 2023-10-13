def get_grade(first, second, third)
  average = (first + second + third) / 3
  if average < 60
    'F'
  elsif average < 70
    'D'
  elsif average < 80
    'C'
  elsif average < 90
    'B'
  else
    'A'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"