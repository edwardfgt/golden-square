class Diary
  def initialize
    @entries = []
  end

  def add(entry)
    @entries.push(entry)
  end

  def all
    return @entries
  end

  def count_words
    total_count = 0
    @entries.each do |entry|
      total_count += entry.count_words
    end
    return total_count
  end

  def reading_time(wpm)
    total_time = 0
    @entries.each do |entry|
      total_time += entry.reading_time(wpm)
    end
    return total_time
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    # how many words user can read
    user_can_read = wpm * minutes
    # filter out the entries which have too many words
    entry_can_read = @entries.select { |entry| entry.count_words < user_can_read }
    entry_can_read.sort_by { |entry| entry.count_words }
    # return the highest remaining
    return entry_can_read.first
  end
end