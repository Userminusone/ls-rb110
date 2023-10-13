DOUBLE_CHARS = ('a'..'z').entries.join.delete('aeiou').chars

def double_consonants(string)
  string.chars.map {|char| DOUBLE_CHARS.include?(char.downcase) ? char * 2 : char}.join('')
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""