def titleize(string)
  string.split(" ").map {|word| word.capitalize}.join(" ")
end

words = "the flintstones rock"

titleized_words = titleize(words)

p titleized_words
p words