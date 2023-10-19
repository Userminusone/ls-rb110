SUITS = %w(H D S C)
CARD_TYPES = %w(A 2 3 4 5 6 7 8 9 J Q K)
CARD_NAMES = CARD_TYPES.zip(%w(Ace 2 3 4 5 6 7 8 9 Jack Queen King)).to_h

def prompt(message)
  puts "==> #{message}"
end

def join_and(ary)
  names = ary.map do |card_type|
    CARD_NAMES[card_type[1]]
  end
  last = names.pop
  names.join(', ') + (names.empty? ? last : " and #{last}")
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def busted?(cards)
  total(cards) > 21
end

def play_again?
  options = { y: true, n: false }
  options_string = options.keys.join(' or ')
  loop do
    prompt "Play again? (#{options_string})"
    choice = gets.chomp.to_sym
    if options.key?(choice)
      return options[choice]
    else
      prompt "Oops! That's not an option"
    end
  end
end

def stay?
  options = { hit: false, stay: true }
  options_string = options.keys.join(' or ').capitalize
  loop do
    prompt "#{options_string}?"
    choice = gets.chomp.to_sym
    if options.key?(choice)
      return options[choice]
    else
      prompt "Oops! That's not an option"
    end
  end
end


loop do
  deck = SUITS.product(CARD_TYPES).shuffle
  player_cards = []
  2.times { player_cards << deck.pop }
  dealer_cards = []
  2.times { dealer_cards << deck.pop }

  player_bust = nil
  loop do
    puts "Dealer has: #{CARD_NAMES[dealer_cards[0][1]]} and unknown card"
    puts "You have: #{join_and(player_cards)}"
    break if stay?
    player_cards << deck.pop
    player_bust = busted?(player_cards)
    break if player_bust
  end

  if player_bust
    puts "You busted, dealer won."
  else
    while total(dealer_cards) < 17
      dealer_cards << deck.pop
    end

    if busted?(dealer_cards)
      puts "Dealer busted, you won!"
    else
      case total(player_cards) <=> total(dealer_cards)
      when 1 then puts "You won!"
      when -1 then puts "Dealer won."
      when 0 then puts "It's a tie!"
      end
    end
  end

  puts "Dealer cards: #{join_and(dealer_cards)}"
  puts "Player cards: #{join_and(player_cards)}"

  break unless play_again?
end