def get_input(prompts)
  vowels = %w(a e i o u)
  user_input = []

  prompts.each do |prompt|
    if vowels.include?(prompt.chars.first.downcase)
      print "Enter an #{prompt}: "
    else
      print "Enter a #{prompt}: "
    end
    
    user_input << gets.chomp
  end
  user_input
end

def madlib(noun, verb, adjective, adverb)
  "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
end

noun, verb, adjective, adverb = get_input(%w(noun verb adjective adverb))

puts madlib(noun, verb, adjective, adverb)