ALPHABET = ('a'..'z')

def cleanup(string)
  string = "z#{string}z"
  string.chars.map {|char| ALPHABET.include?(char.downcase) ? char : ' '}.join('').split(' ').reject {|word| word.empty? }.join(' ').slice(1..-2)
end

p cleanup("---what's my +*& line?") == ' what s my line '