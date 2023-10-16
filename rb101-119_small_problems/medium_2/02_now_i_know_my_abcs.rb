BLOCKS = [%W(b o),%W(x k),%W(d q),%W(c p),%W(n a),%W(g t),%W(r e),%W(f s),%W(j w),%W(h u),%W(v i),%W(l y),%W(z m)]

def block_word?(word)
  test_word = word.downcase
  BLOCKS.each do |block|
    return false if test_word.include?(block[0]) && test_word.include?(block[1])
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true