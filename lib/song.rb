class Song

    attr_accessor :artist
    attr_reader :name
    
    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist
        @artist
    end

    def artist_name
        if artist == nil
            nil 
        else
            self.artist.name
        end
    end


end