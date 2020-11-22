class Author
     attr_accessor :name

     def initialize(name)
          @name = name
     end

     # has many posts 
     def posts
          Post.all.select { |post| post.author == self }
     end

     # takes in arg of a post & associates that post with author
     # by telling the post that it belongs to that author(self)
     def add_post(post)
          post.author = self 
     end

     # Takes in arg of post title, creates new post & associates post and author
     def add_post_by_title(title)
          post = Post.new(title)
          post.author = self 
     end

     # Class method that returns total # of posts associted to author
     def self.post_count
          Post.all.count
     end





end
