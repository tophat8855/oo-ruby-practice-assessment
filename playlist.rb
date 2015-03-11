class Playlist
  attr_reader :songs

  def initialize
    @songs = [];
  end

  def empty?
    @songs.length == 0
  end

  def add_song(title)
    @songs << title
  end

end
