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

     # has many songs. Abstracting from Song class 
     def songs 
          Song.all.select { |song| song.artist == self }
     end

     #takes in an argument of a song and associates song w/ artist
     #by telling song it belongs to artist (self)
     def add_song(song)
          song.artist = self
     end

     def add_song_by_name(name)
          song = Song.new(name)
          song.artist = self
     end

    def self.song_count
          Song.all.count  
    end





end
