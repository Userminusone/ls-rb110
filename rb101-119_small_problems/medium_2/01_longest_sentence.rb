def print_longest_sentence(filename)
  text = File.read(filename)
  sentences = text.split(/\.|\?|!/)
  longest = nil
  longest_length = 0
  sentences.each do |sentence|
    current_length = sentence.split.length
    if current_length > longest_length
      longest_length = current_length
      longest = sentence
    end
  end
  puts longest
  puts "This sentence is #{longest_length} words long!"
end

print_longest_sentence('example_text.txt')