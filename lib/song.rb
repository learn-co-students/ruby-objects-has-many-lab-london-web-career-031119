class Song

  @@all = []

  attr_accessor :song, :artist

  def initialize(song)
    @song = song
    @@all << self
  end

  def name
    @song
  end

  def artist_name
    self.artist.name if self.artist != nil
  end

  def self.all
    @@all
  end

end
