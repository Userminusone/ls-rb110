ORD_0 = 48

def char_to_digit(char)
  char.ord - ORD_0
end

def string_to_integer(string)
  string.chars.reverse.map.with_index {|char, idx| char_to_digit(char) * (10**idx)}.sum
end

def string_to_signed_integer(string)
  if string[0] == '+'
    return string_to_integer(string[1..])
  elsif string[0] == '-'
    return -string_to_integer(string[1..])
  end
  string_to_integer(string)
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100