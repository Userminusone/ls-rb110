statement = "The Flintstones Rock"

frequencies = {}

statement.chars.each do |char|
  if frequencies.key?(char)
    frequencies[char] += 1
  else
    frequencies[char] = 1
  end
end

p frequencies