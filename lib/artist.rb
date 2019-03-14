require 'pry'

class Artist

attr_accessor :artist, :name, :songs
attr_writer :artist, :name, :songs
attr_reader :artist, :name, :songs

@@all = []

def songs
     Song.all.select {|song| song.artist == self}
 end

def initialize(name)
@name = name
@@all << self
end

def add_song(song)
song.artist = self
 end

def add_song_by_name(song_name)
song = Song.new(song_name)
song.artist = self
end

def self.song_count
 Song.all.count
end

def self.all
   @@all
 end

end
