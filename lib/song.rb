require "pry"

class Song
    attr_accessor :name, :artist
    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end

    # this class should return all song instances

    def self.all
        @@all
    end

    def artist_name=(name)

        # wants this instance of song's artist to be == instance of artist, in the artist class

        self.artist = Artist.find_or_create_by_name(name)
        # writer method for song's artist
        # getting file name from MP3 importer
        # we need writer method to make sure that artist doesnt already exist in artist bc we don't want duplicate instance of artist

    end 

    def self.new_by_filename(filename)
        artist_name = filename.split(" - ")[0]
        song_name = filename.split(" - ")[1]
        new_song = self.new(song_name)
        new_song.artist_name=(artist_name)
        new_song

    end 

 
end 