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

    def songs
        # get all song instances from Song 
        # select songs only associated with 
        # that artist instance

        Song.all.select { |song| song.artist == self }
        # as it goes through all the songs it will go through song's artist and see if it matches
        # this instance of an artist and if it does select will return an array with all those songs
    end

    def add_song(song)
        song.artist = self 
        
    end 

    def self.find_or_create_by_name(name)
        # take in name passed
        # find the artist instance that has name or create new one
        # return value will be instance of an artist with name filled out
        if self.all.find { |artist| artist.name == name }
            self.all.find { |artist| artist.name == name }
        else
            # we need to create a new instance of artist using name
            self.new(name)
            # we are already in Artist class so we can use self 
        end
    end 

    def print_songs
        # print all names of songs associated w/ artist instance
        # wants to print out each song on one line
        self.songs.each {|song| puts song.name}

        # Song.all.select do |song| 
        #     if song.artist == self
        #         puts song.name
        #     end
        # end

        # using songs method, .each will go through each song in the
        # songs array and will put the name of that artist for that song
        # use puts because it wants it on each individual line (print puts on the same line)

    end 

end