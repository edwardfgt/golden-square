def check_grammar(string)
  if string[0] == string[0].upcase and [".", "?", "!"].include? string[-1]
    true
  else
    false
  end
end