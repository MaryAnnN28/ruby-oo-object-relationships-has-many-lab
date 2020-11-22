class Song
     attr_accessor :name, :artist

     @@all = []


     def initialize(name)
          @name = name
          @@all << self
     end

     def self.all
          @@all
     end

     # knows the name of its artist 
     def artist_name
          artist.name if artist
     end


end
