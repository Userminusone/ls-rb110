def center_of(string)
  string[(string.length - 1) / 2, string.length.odd? ? 1 : 2]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'