class DiaryEntry
  def initialize(title, contents) # title and contents are both strings
    @title = title
    @contents = contents
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
     return @contents.split.size
  end

  def reading_time(wpm)
    #
  end

  def reading_chunk(wpm, minutes)
    #
  end
end