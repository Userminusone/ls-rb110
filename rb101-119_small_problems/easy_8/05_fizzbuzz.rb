def fizzbuzz(first, last)
  ((first..last).entries.map do |num|
    string = ""
    string << "Fizz" if num % 3 == 0
    string << "Buzz" if num % 5 == 0
    string.empty? ? num : string
  end).join(', ')
end

puts fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz