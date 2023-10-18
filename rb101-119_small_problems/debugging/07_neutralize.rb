=begin
def neutralize(sentence)
  words = sentence.split(' ')
  words.each do |word|
    words.delete(word) if negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

The above code doesn't work because we are attempting to iterate over a collection by invoking each and removing elements from the same collection within the block of the each iterator. Whenever we delete elements from an array within the block of an invocation of each, some elements in the array are skipped because deleting an element causes all subsequent elements to have an index one less than their prior indices, meaning that any element succeeding an element which is deleted will now have the same index as the element that was deleted had before, while the iterator will now point to the element in the next index, and thus any element succeeding an element which is deleted will not be iterated over.

To fix this, we should invoke the reject! method on the words array to delete elements of a certain condition more reliably
=end

def neutralize(sentence)
  words = sentence.split(' ')
  words.reject! do |word|
    negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.