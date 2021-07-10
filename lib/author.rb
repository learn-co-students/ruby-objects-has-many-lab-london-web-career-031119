class Author

  attr_accessor :name, :title

  @@posts_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(title)
    title.author = self
    @posts << title
    @@posts_count += 1
  end

  def add_post_by_title(title)
    @posts << Post.new(title, self)
    @@posts_count += 1
  end

  def self.post_count
    @@posts_count
  end

end
