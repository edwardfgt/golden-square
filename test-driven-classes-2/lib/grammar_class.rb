class GrammarStats
  def initialize
    # ...
  end

  def check(text) # text is a string
    if text[0] == text[0].upcase and [".", "?", "!"].include? text[-1]
      true
    else
      false
    end
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end