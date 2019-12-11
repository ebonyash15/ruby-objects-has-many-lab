class Author
  attr_accessor :name, :posts
  @@posts = 1
  def initialize(name)
    @posts = []
    @name=name
  end
  def add_post(post)
    @posts << post
    post.author=self
    @@posts += 1
  end
  def add_post_by_title(title)
    post=Post.new(title)
    post.author=self
    @posts << post
    @@posts += 1
  end
  def posts
    Post.all.select {|post| post.author == self}
  end
  def self.post_count
    @@posts
  end
end
