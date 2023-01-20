def estimate_time(string)
  length = string.split.length
  return 0 if string == ""
  return 1 if length < 200
  return length / 200
end

