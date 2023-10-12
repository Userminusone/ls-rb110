def after_midnight(string)
  hours, minutes = string.split(':').map {|v| v.to_i }
  (hours * 60 + minutes) % 1440
end

def before_midnight(string)
  amount_after_midnight = after_midnight(string)
  amount_after_midnight == 0 ? 0 : 1440 - amount_after_midnight
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0