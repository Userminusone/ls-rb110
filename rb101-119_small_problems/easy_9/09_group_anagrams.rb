def anagrams?(word1, word2)
  word1.chars.sort == word2.chars.sort
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

final_array = []
until words.empty?
  test_word = words.first
  subarray, words = words.partition{|element| anagrams?(test_word, element)}
  final_array << subarray.inspect
end

puts final_array