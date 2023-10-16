def letter_percentages(string)
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
  result.each_key do |key|
    result[key] *= (100.0 / string.length)
  end
  result
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }