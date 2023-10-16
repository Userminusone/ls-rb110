def balanced?(string)
  parenthesis_state = 0
  string.chars.each do |char|
    case char
    when '('
      parenthesis_state += 1
    when ')'
      return false if parenthesis_state == 0
      parenthesis_state -= 1
    end
  end
  parenthesis_state == 0
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false