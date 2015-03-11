class Playlist
  attr_reader :songs

  def initialize
    @songs = [];
  end

  def empty?
    @songs.length == 0
  end

end
