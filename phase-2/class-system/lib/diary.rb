class Diary
  def initialize
    @entries = []
  end

  def add(entry)
    @entries.push(entry) 
  end

  def read
    return @entries
  end

  def extract_numbers
    phone_numbers = @entries.map {
      |entry|
      entry.contents.scan(/\d{11}/)
    }
    return phone_numbers.flatten.uniq
  end

  def find_best_entry(wpm, minutes)
    # how many words user can read
    user_can_read = wpm * minutes
    # filter out the entries which have too many words
    entry_can_read = @entries.select { |entry| entry.count_words < user_can_read }
    entry_can_read.sort_by { |entry| entry.count_words } # (&:count_words)
    # return the highest remaining
    return entry_can_read.first
  end
end