require 'pry'

class Post

attr_accessor :title, :author
attr_writer
attr_reader

@@all = []

def initialize(title)
@title = title
@@all << self
end

def self.all
@@all
end

def author_name
  if self.author
    self.author.name
  else
    nil
  end
end

end
