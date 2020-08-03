
  class Artist
  attr_accessor :name, :song
 
  @@all = []  

  def initialize(name)
    @name = name
    @@all << self
    @song= [ ]
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @song.new == self
  end
   
 
  

  
end
  
  

