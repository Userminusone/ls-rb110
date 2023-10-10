produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash)
  keys = hash.keys
  return_hash = {}
  index = 0
  loop do
    break if index == keys.size

    current_key = keys[index]

    current_value = hash[current_key]

    if current_value == 'Fruit'
      return_hash[current_key] = current_value
    end

    index += 1
  end
  return_hash
end



p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}