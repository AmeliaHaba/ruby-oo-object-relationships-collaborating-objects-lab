class MP3Importer
    attr_accessor :path

    def initialize(path)
        @path = path
    end 

    def files
        #parses files in the path
        #returns array containing file names
        #only use .mp3 files 
        #google how to get a list of files in a directory

        Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }

    end 

    def import
        self.files.each { |file| Song.new_by_filename(file)}


        # sends song names to song class
        # method should call Song.new_by_filename
    end 
end 