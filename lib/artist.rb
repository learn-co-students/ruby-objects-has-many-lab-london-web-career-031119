class Artist

  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(string_song)
    song = Song.new(string_song)
    song.artist = (self)
    @songs << song
  end

  def self.song_count
    Song.all.length
  end

end