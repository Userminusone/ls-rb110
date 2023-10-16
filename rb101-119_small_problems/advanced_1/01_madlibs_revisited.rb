REPLACEMENT_WORDS = {adjective: %w(quick lazy sleepy ugly),noun: %w(fox dog head leg),verb: %w(jumps lifts bites licks),adverb: %w(easily lazily noisily excitedly)}

def madlib(filename)
  text = File.read(filename)
  text.split.map do |word|
    format(word, REPLACEMENT_WORDS.map {|key, value| [key, value.sample]}.to_h)
  end.join(' ')
end

puts madlib('madlib_template.txt')