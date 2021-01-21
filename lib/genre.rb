class Genre 
  
  extend Concerns::Findable
  
  attr_accessor :title, :author, :name

 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
 
  def songs
    @songs
  end
 
  def self.all
   @@all
  end
  
  def self.destroy_all
  @@all.clear  
  end 
  
   def save
     @@all << self
  end 
  
  def self.create(name)
   genre = Genre.new(name)
   genre.save
   genre

  end
  
  def artists
    self.songs.collect {|s| s.artist}.uniq
  end
  

end
