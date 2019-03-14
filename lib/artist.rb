class Artist 
  
  @@total_songs = 0
  attr_reader :name
  attr_accessor :songs 
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def add_song(song)
    @songs << song
    song.artist = self
    @@total_songs += 1
  end 
  
  def songs
    @songs 
  end 
  
  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    @songs << new_song
    new_song.artist = self
    @@total_songs += 1
  end
  
  def self.song_count
    @@total_songs
  end 
end 