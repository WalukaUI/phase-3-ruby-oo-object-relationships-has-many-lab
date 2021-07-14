

class Artist
    attr_accessor :name
    @@all=[]
    def initialize(name)
        @name=name
        @@all << name
    end

    def self.all
        @@all
    end
    def add_song(song)
        song.artist= self
    end

    def add_song_by_name(songname)
        song = Song.new(songname)
        song.artist= self
    end
    def songs
        Song.all.filter {|name| name.artist == self}
    end
    def self.song_count
        Song.all.size
    end
end