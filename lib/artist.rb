class Artist
  attr_accessor :name
  @songs=[]
  @@songs=[]
  def initialize(name)
    @name=name
  end
  def add_song(name)
    song = Song.new(name)
    @songs << song
    @@songs << song
  end
  def add_song_by_name(name)
    song=Song.new(name)
    @songs << song
    @@songs << song
  end
  def songs
    @songs
  end
  def self.song_count
    @@songs.size
  end
end
