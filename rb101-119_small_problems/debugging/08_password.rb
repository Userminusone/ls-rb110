=begin
password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  password = new_password
end

def verify_password
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  set_password
end

verify_password

The above code does not work because we are attempting to access a local variable initialized in the main scope from within the scope of a method, which does not have access to the main scope of the program. As a result, the local variable password initialized in the set_password method, the local variable password used in the verify_password method, and the local variable password initialized in the main scope of the program all refer to different objects, which gives seemingly unexpected results.

To fix this, we rewrite the verify_password method to accept a parameter that we can read and then we pass the local variable password to the invocation of verify_password. Additionally, we reassign password to the return value of set_password on line 23.
=end
password = nil

def set_password
  puts 'What would you like your password to be?'
  gets.chomp
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password
end

verify_password(password)