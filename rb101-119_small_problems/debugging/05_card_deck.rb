=begin
cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards,
         :diamonds => cards,
         :clubs    => cards,
         :spades   => cards }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  remaining_cards.map do |card|
    score(card)
  end

  sum += remaining_cards.sum
end

puts sum

The above code throws an error because on line 35, we attempt to invoke the sum method on an array which has non numeric values. On lines 31-33, the local variable remaining_cards invokes the map method, which seems like it should convert all the elements within the local variable remaining_cards to numeric values, but it doesn't because the map method doesn't modify its caller.

To fix this, we simply have to retrieve the sum directly from return value of map, since we don't want to modify the remaining_cards array.

The reason the sum isn't correct is because the values of the local variable hash are all references to the same array of cards, so the modifications we make to any of the values are reflected in the other values as well. To fix this, we simply invoke the clone method on cards for every value of the deck array we want to set to the value of cards, so that each value references a unique object with identical data.
=end


cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.clone,
         :diamonds => cards.clone,
         :clubs    => cards.clone,
         :spades   => cards.clone}

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|

  sum += remaining_cards.map do |card|
    score(card)
  end.sum
end

puts sum
