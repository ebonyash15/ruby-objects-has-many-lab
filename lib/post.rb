class Post
  @@all = []
  attr_accessor :title
  def initialize
    @@all << self
  end
  def self.all
    @@all
  end
  def author
    @author.name
  end
end
