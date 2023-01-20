class GrammarStats
  def initialize
    @checked = 0
    @passed = 0
  end

  def check(text) # text is a string
    if text[0] == text[0].upcase and [".", "?", "!"].include? text[-1]
      @checked += 1
      @passed += 1
      true
    else
      @checked += 1
      false
    end
  end

  def percentage_good
    return "No texts have been passed" if @checked == 0
    percentage = (@passed.to_f / @checked.to_f) * 100
    "#{percentage.to_i}% of checks have passed so far"
  end
end

