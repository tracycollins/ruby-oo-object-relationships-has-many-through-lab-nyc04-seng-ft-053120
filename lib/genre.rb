require_relative("song.rb")

class Genre
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.get_songs_by_genre(self)
    end

    def artists
        Song.get_artists_by_genre(self)
    end
end