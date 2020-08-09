require 'pry'

class Artist

    attr_accessor :name, :songs 
    @@all = []

    def initialize (name)
        @name = name
        @songs = []
        @@all << self
    end

    def self.all
        @@all
    end

    def add_song(song)
        if !@songs.include? (song)
            @songs << song
            song.artist = self
        end
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        self.add_song(song)
    end

    def songs 
        @songs 
    end

    def self.song_count
       counter = 0
       @@all.each do |artist|
            counter += artist.songs.count
       end
       counter
    end 
end
