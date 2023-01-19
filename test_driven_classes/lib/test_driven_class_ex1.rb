class DiaryEntry
  def initialize(title, contents) # title, contents are strings
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
    # Returns the number of words in the contents as an integer
    return @contents.split.length
  end

  def reading_time(wpm) # wpm is an integer representing the number of words the
                        # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
    word_count = @contents.split.length
    if word_count == 0
      return 0
    elsif word_count <= wpm
      return 1
    else
      return word_count / wpm
    end
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
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
