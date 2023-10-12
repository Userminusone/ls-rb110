def flip_end_chars(string)
  return string.reverse if string.length <= 2
  string[-1] + string[1...-1] + string[0]
end

def swap(string)
  string.split.map {|word| flip_end_chars(word)}.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'