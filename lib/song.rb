class Song
  attr_accessor :all, :artist, :name
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @artist = nil
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    self.artist && self.artist.name
  end
end