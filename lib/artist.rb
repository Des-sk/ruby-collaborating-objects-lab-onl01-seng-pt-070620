
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
    @songs<< song
  end
  
  def song
    Song.all.select {|songs| songs.artist == self}
  end
  
  def self.find_or_create_by_name(name)   #class method uses find/create class 
                                          #methods to detect or create instances
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end

  def self.find(name)     #class method detects instances from @@all class variable
    self.all.detect { |artist| artist.name == name } || self.all.create { |artist| artist.name == Artist.new(name)
  end
  
  def save
    @@all << self
  end

  def self.create(name)   #class method creates & stores instances vs initializing
    artist = Artist.new(name)
    artist.save
    artist
  end
  
  end
 
  

  

  
  

