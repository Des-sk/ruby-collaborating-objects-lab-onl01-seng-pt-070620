class Song
  attr_accessor :name, :artist
  
  @@all= [ ]
  
  def initialize(name)
    @name= name
    @@all<< self
    @song=[ ]
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
   
  end
  
  def songs
     @songs << song
  end
  

  
end
  