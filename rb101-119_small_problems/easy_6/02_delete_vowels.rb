VOWELS = "AEIOUaeiou".chars

def remove_vowels(array)
  array.map {|word| word.split('').reject {|char| VOWELS.include?(char)}.join('')}
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']