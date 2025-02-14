class Artist
  @@songs = 1
  attr_accessor :name
  def initialize(name)
    @name=name
    @songs=[]
  end
  def add_song(song)
    @songs << song
    song.artist=self
    @@songs+=1
  end
  def add_song_by_name(name)
    song=Song.new(name)
    @songs << song
    song.artist=self
    @@songs+=1
  end
  def songs
    Song.all.select {|song| song.artist == self}
  end
  def self.song_count
    @@songs
  end
end
