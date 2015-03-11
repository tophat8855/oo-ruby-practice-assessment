class Playlist
  attr_reader :songs, :now_playing

  def initialize
    @songs = []
    @now_playing = nil
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

  def swap(song1, song2)
    song1_index = @songs.index(song1)
    song2_index = @songs.index(song2)

    @songs[song1_index] = song2
    @songs[song2_index] = song1
  end

  def play
    @now_playing = @songs.first
  end

end
