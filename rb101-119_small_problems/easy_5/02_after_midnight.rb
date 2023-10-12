def formatted_num(number)
  (number < 10 ? '0' : '') + number.to_s
end

def time_of_day(integer)
  integer %= 1440
  hours, minutes = integer.divmod(60)
  "#{formatted_num(hours)}:#{formatted_num(minutes)}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"