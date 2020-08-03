
  class Artist
  attr_accessor :name, :songs
 
  @@all = []  

  def initialize(name)
    @name = name
    @@all << self
    @songs= [ ]
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
    song<< @songs
  end
  
  def song
    Song.all.select do |songs|
      songs.artist = self
  end
 end
 
  

  
end
  
  

