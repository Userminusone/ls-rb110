def uuid
  chars = '0123456789abcdef'.chars
  result = [Array.new(8),Array.new(4),Array.new(4),Array.new(4),Array.new(12)]
  result.map do |subarr|
    subarr.map do |_|
      chars.sample
    end.join('')
  end.join('-')
end

p uuid
p uuid
p uuid