class Author
  attr_accessor :name, :posts
  @posts = []
  @@posts = []
  def initialize(name)
    @name=name
  end
  def add_post(post)
    post = Post.new
    @posts<<post
    @@posts << post
  end
  def add_post_by_title(title)
    title=Post.new(title)
    @post<<title
    @@posts << title
  end
  def self.post_count
    @@posts.size
  end
end
