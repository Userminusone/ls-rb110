SYMBOLS = { x: [' ╲ ╱ ', '  ╳  ', ' ╱ ╲ '], o: ['╭───╮', '│   │', '╰───╯'],
            s: ['     ', '     ', '     '] }

def get_symbol(symbol, section)
  symbol ||= 's'
  SYMBOLS[symbol.to_sym][section]
end

def get_board(board_arr)
  board_arr.map do |subarr|
    (0..2).entries.map do |num|
      subarr.map do |symbol|
        get_symbol(symbol, num)
      end.join('│')
    end.join("\n")
  end.join("\n─────┼─────┼─────\n")
end

def init_board
  (0..2).entries.map do |_|
    (0..2).entries.map do |_|
      nil
    end
  end
end
