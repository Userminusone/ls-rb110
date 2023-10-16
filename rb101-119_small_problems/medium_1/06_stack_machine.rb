OPERATIONS = {ADD: :+, SUB: :-, MULT: :*, DIV: :/, MOD: :%}

def minilang(program)
  stack = []
  register = 0
  program.split.each do |instruction|
    case instruction
    when 'PUSH'
      stack.push(register)
    when 'POP'
      register = stack.pop
    when 'PRINT'
      puts register
    else
      if OPERATIONS.key?(instruction.to_sym)
        register = OPERATIONS[instruction.to_sym].to_proc.call(register, stack.pop)
      else
        register = instruction.to_i
      end
    end
  end
end

puts "EXAMPLE 1:"
minilang('PRINT')
# 0
puts "EXAMPLE 2:"
minilang('5 PUSH 3 MULT PRINT')
# 15
puts "EXAMPLE 3:"
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8
puts "EXAMPLE 4:"
minilang('5 PUSH POP PRINT')
# 5
puts "EXAMPLE 5:"
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7
puts "EXAMPLE 6:"
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6
puts "EXAMPLE 7:"
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12
puts "EXAMPLE 8:"
minilang('-3 PUSH 5 SUB PRINT')
# 8
puts "EXAMPLE 9:"
minilang('6 PUSH')
# (nothing printed; no PRINT commands)