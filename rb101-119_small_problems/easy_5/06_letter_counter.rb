def word_sizes(string)
  result = {}
  counts = string.split(' ').map {|word| word.size }
  counts.each do |count|
    if result.key?(count)
      result[count] += 1
    else
      result[count] = 1
    end
  end
  result
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}