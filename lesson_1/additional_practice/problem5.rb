flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

index = nil

flintstones.each_with_index do |value, idx|
  if value.start_with?('Be')
    index = idx
    break
  end
end

p index