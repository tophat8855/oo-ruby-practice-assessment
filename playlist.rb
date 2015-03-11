class Playlist
  attr_reader :songs

  def initialize
    @songs = []
  end

  def empty?
    @songs.length == 0
  end

  def add_song(song)
    @songs << song
  end

  def song_names
    title_array = []
    @songs.each do |song|
      title_array << song.title
    end
    title_array
  end

  def remove_song(song)
    @songs.delete(song)
  end

  def total_length
    length = 0
    @songs.each do |song|
      length += song.length
    end
    length
  end

end
