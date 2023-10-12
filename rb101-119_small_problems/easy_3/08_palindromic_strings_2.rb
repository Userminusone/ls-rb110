def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  formatted_string = string.downcase.chars.select {|char| ('a'..'z').include?(char) || ('0'..'9').include?(char)}.join
  palindrome?(formatted_string)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false