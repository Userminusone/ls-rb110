def leading_substrings(string)
  string.chars.map.with_index {|_, idx| string[0..idx]}
end

def substrings(string)
  string.chars.map.with_index {|_, idx| leading_substrings(string[idx..])}.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]