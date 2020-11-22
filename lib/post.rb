class Post
     attr_accessor :title, :author  #belongs to an author 

     @@all = []

     def initialize(title)
          @title = title   # has a title 
          @@all << self
     end

     def self.all
          @@all
     end

     # knows the name of its author, returns nil if post does not have author
     def author_name 
          author.name if author 
     end



end
