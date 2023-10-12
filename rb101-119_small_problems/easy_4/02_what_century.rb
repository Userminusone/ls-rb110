def century(number)
  century_num = number.ceil(-2) / 100
  if century_num.digits[1] == 1
    "#{century_num}th"
  elsif century_num.digits[0] == 1
    "#{century_num}st"
  elsif century_num.digits[0] == 2
    "#{century_num}nd"
  elsif century_num.digits[0] == 3
    "#{century_num}rd"
  else
    "#{century_num}th"
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'