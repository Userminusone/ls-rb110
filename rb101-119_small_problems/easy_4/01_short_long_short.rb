def short_long_short(a, b)
  a.size > b.size ? b + a + b : a + b + a
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"