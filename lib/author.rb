class Author

  attr_accessor :name
  attr_reader :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(string_post)
    post = Post.new(string_post)
    post.author = (self)
    @posts << post
  end

  def self.post_count
    Post.all.length
  end

end