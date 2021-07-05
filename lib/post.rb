class Post
  attr_accessor :name, :author

  @@all = []

  def initialize(title)
    @title = title
    @author = nil
    @@all << self
  end

  def self.all
    @@all
  end

  def title
    @title
  end

  def author_name
    self.author && self.author.name
  end
end