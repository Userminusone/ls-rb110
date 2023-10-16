=begin
def shout_out_to(name)
  name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

The above code doesn't work because whenever the chars method is invoked in a string, it returns a new array containing new 1 letter strings that don't reference the original string. This means that any changes made to the strings in the array won't be reflected in the original string.

To fix this, we should invoke the upcase! method directly on the name variable so that it is properly modified.
=end

def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'