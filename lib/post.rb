class Post

  @@all = []

  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    @author.name unless @author == nil
  end

  def self.all
    @@all
  end
end
