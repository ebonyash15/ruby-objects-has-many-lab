class Post
  @@all = []
  attr_accessor :title
  def initialize(title)
    @title=title
    @@all << self
  end
  def self.all
    @@all
  end
  def author
    @author.name
  end
end
