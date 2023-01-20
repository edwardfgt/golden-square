class MusicLibrary
  def initialize
    @tracks = []
  end

  def add(track) # track is an instance of Track
    @tracks << track
  end

  def all
    @tracks
  end

  def search(keyword) # keyword is a string
    # Returns a list of tracks that match the keyword
  end
end