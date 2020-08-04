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
    new_song = self.new(song)

  end
    
  def self.create(song)
    @@all<< song
    new_song.artist_name = artist
    new_song
  end

  
  
end
  