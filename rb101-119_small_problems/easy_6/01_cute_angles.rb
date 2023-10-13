DEGREE = "\xC2\xB0"

def pad(string)
  string.length == 1 ? '0' + string : string
end

def dms(value)
  value *= 60
  degrees, value = value.divmod(60)
  value *= 60
  minutes, seconds = value.divmod(60)
  degrees.to_s + DEGREE + pad(minutes.to_s) + "'" + pad(seconds.to_i.to_s) + '"'
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")