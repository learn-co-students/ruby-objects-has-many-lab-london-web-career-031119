require 'pry'

class Song

attr_accessor :artist, :name
attr_writer :artist
attr_reader :artist

@@all = []

def initialize(name)
@name = name
@@all << self
end

def self.all
  @@all
end

def artist_name
  if self.artist
    self.artist.name
  else
    nil
  end
end

end
