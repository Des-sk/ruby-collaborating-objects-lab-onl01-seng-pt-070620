class Song
  attr_accessor :name, :artist
  
  @@all= [ ]
  
  def initialize(name)
    @name= name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    
    new_song.artist_name = artist
    new_song
  end


  def self.create(name)
    artist = self.new(name)
    @@all << artist
    artist
  end

  def save
    @@all << self
  end
  
  
end
  