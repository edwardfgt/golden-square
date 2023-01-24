class StringRepeater
  def initialize(terminal)
    @terminal = terminal
  end

  def repeat
    @terminal.puts "Hello. I will repeat a string many times."
    @terminal.puts "Please enter a string"
    string = @terminal.gets.chomp
    @terminal.puts "Please enter a number of repeats"
    num = @terminal.gets.to_i
    @terminal.puts "Here is your result:"
    @terminal.puts (string * num)
  end


end

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX