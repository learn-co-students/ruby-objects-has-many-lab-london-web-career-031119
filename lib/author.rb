require 'pry'

class Author

attr_accessor :name
attr_writer
attr_reader

@@all = []

def self.all
@@all
end

def initialize(name)
@name = name
@@all << self
end

def posts
     Post.all.select {|post| post.author == self}
 end

def add_post(post)
  post.author = self
end

def add_post_by_title(post_title)
post = Post.new(post_title)
post.author = self
end

def self.post_count
 Post.all.length
end

end
