class Song
    attr_accessor :name, :artist, :genre

    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end

    def self.get_songs_by_artist(artist)
        Song.all.select do |song|
            song.artist == artist
        end
    end

    def self.get_songs_by_genre(genre)
        Song.all.select do |song|
            song.genre == genre
        end
    end

    def self.get_artists_by_genre(genre)
        artists = []
        Song.all.each.select do |song|
            if (song.genre === genre)
                artists << song.artist
            end
        end
        artists.uniq
    end

    def self.get_genres_by_artist(artist)
        genres = []
        Song.all.each.select do |song|
            if (song.artist === artist)
                genres << song.genre
            end
        end
        genres.uniq
    end

    def self.all
        @@all
    end
end