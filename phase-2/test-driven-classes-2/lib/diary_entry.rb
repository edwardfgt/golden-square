class DiaryEntry
  def initialize(title, contents) 
    @title = title
    @contents = contents
    @last_word_read = 0
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    return @contents.split.length
  end

  def reading_time(wpm) 

    word_count = @contents.split.length
    if word_count == 0
      return 0
    elsif word_count <= wpm
      return 1
    else
      return word_count / wpm
    end
  end

  def reading_chunk(wpm, minutes)

    readable_words = wpm * minutes
    words = @contents.split
    
    start = @last_word_read
    finish = @last_word_read + readable_words
 

    if readable_words == 0 || words.length == 0
      return 0
    end

    readable_chunk = words[start,readable_words]
    @last_word_read = finish
    readable_chunk.join(' ')
  end
end