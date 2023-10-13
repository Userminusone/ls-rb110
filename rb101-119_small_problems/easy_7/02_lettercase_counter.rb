def letter_case_count(string)
  result = {lowercase: 0, uppercase: 0, neither: 0}
  string.chars.each do |char|
    if char == char.upcase
      if char == char.downcase
        result[:neither] += 1
      else
        result[:uppercase] += 1
      end
    elsif char == char.downcase
      result[:lowercase] += 1
    else
      result[:neither] += 1
    end
  end
  result
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }