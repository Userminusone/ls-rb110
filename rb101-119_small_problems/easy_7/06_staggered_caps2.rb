ALPHABET = 'a'..'z'

def staggered_case(string)
  capitalize = false
  string.chars.map {|char| capitalize = !capitalize if ALPHABET.include?(char.downcase); capitalize ? char.upcase : char.downcase}.join('')
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'