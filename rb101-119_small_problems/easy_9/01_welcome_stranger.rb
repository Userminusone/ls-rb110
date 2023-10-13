def greetings(full_name, job)
  puts "Hello, #{full_name.join(' ')}! Nice to have a #{job[:title]} #{job[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })