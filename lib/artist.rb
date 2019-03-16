require 'pry'

class Artist
  attr_accessor :name, :artist
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
    # binding.pry

  end

  var = def add_song_by_name(new_song)
    song = Song.new(new_song)
    song.artist = self
    @songs << song
  end
  # binding.pry

  def self.song_count
    Song.all.size
  end

end
