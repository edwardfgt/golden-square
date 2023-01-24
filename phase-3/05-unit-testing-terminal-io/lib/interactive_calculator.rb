class InteractiveCalculator
  def initialize(terminal)
    @terminal = terminal
  end

  def calculate
    @terminal.puts "Hello. I will subtract two numbers."
    @terminal.puts "Please enter a number"
    value1 = @terminal.gets.to_i
    @terminal.puts "Please enter another number"
    value2 = @terminal.gets.to_i
    @terminal.puts "Here is your result:"
    result = value1 - value2
    @terminal.puts "#{value1} - #{value2} = #{result}"
  end
end

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1