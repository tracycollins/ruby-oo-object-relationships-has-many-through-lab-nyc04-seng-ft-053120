require_relative("song.rb")

class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
    end

    def songs
        Song.get_songs_by_artist(self)
    end

    def genres
        Song.get_genres_by_artist(self)
    end

end