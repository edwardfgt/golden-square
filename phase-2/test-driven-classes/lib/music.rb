class Musictracker
  def initialize
    @songs = []
  end
  
  def add_song(song)
    @songs.push(song)
  end
  
  def view_songs
    return "No songs in your library" if @songs.size == 0
    @songs.join(", ")
  end
end