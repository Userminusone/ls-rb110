PLAYER_MARKER = 'x'
COMPUTER_MARKER = 'o'

PLAYERS = { x: 'Player', o: 'Computer' }

SYMBOLS = { x: [' ╲ ╱ ', '  ╳  ', ' ╱ ╲ '], o: ['╭───╮', '│   │', '╰───╯'],
            s: ['     ', '     ', '     '] }

WINNING_LINES = [[[0, 0], [0, 1], [0, 2]],
                 [[1, 0], [1, 1], [1, 2]],
                 [[2, 0], [2, 1], [2, 2]],
                 [[0, 0], [1, 0], [2, 0]],
                 [[0, 1], [1, 1], [2, 1]],
                 [[0, 2], [1, 2], [2, 2]],
                 [[0, 0], [1, 1], [2, 2]],
                 [[0, 2], [1, 1], [2, 0]]]

def prompt(message)
  puts "==> #{message}"
end

def get_symbol(symbol, section)
  symbol ||= 's'
  SYMBOLS[symbol.to_sym][section]
end

def display_board(board_arr)
  system 'clear'
  puts PLAYERS.map { |key, value| "#{key.to_s.upcase}: #{value}" }.join(', ')
  puts(board_arr.map do |subarr|
         (0..2).entries.map do |num|
           subarr.map do |symbol|
             get_symbol(symbol, num)
           end.join('│')
         end.join("\n")
       end.join("\n─────┼─────┼─────\n"))
end

def mark_turn(board, positions, choice, marker)
  choice_coords = positions[choice][1]
  board[choice_coords[0]][choice_coords[1]] = marker
  positions.delete(choice)
end

def player_turn(board, positions)
  options = positions.map do |key, value|
    "#{key} (#{value[0]})"
  end.join(', ')
  loop do
    prompt "Choose a square: #{options}"
    player_choice = gets.chomp.to_sym
    if positions.key?(player_choice)
      mark_turn(board, positions, player_choice, PLAYER_MARKER)
      break
    else
      prompt 'Sorry! That square is taken or invalid. Try again.'
    end
  end
end

def computer_turn(board, positions)
  computer_choice = positions.keys.sample
  mark_turn(board, positions, computer_choice, COMPUTER_MARKER)
end

def init_board
  (0..2).entries.map do |_|
    (0..2).entries.map do |_|
      nil
    end
  end
end

def line_winner(line)
  line.all? { |elem| elem == line[0] } ? line[0] : nil
end

def winner(board)
  WINNING_LINES.each do |winning_line|
    line = winning_line.map { |coord| board[coord[0]][coord[1]] }
    winner = line_winner(line)
    return winner if winner
  end
  nil
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

loop do
  positions = { nw: ['northwest', [0, 0]], n: ['north', [0, 1]],
                ne: ['northeast', [0, 2]], w: ['west', [1, 0]],
                c: ['center', [1, 1]], e: ['east', [1, 2]],
                sw: ['southwest', [2, 0]], s: ['south', [2, 1]],
                se: ['southeast', [2, 2]] }

  board = init_board
  display_board(board)

  is_players_turn = true

  winning_player = nil
  loop do
    if is_players_turn
      player_turn(board, positions)
    else
      computer_turn(board, positions)
    end
    winning_player = winner(board)
    break if positions.empty? || winning_player

    is_players_turn = !is_players_turn
    display_board(board) if is_players_turn
  end
  display_board(board)
  if winning_player
    puts "#{PLAYERS[winning_player.to_sym]} won!"
  else
    puts "It's a tie!"
  end
  break unless play_again?
end

prompt "Thanks for playing my game!"
