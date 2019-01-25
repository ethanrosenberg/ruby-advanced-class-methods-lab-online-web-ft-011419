class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    temp = Song.new
    temp.save
    return temp
  end

  def self.new_by_name(song)
   return self.create(song)
  end
  
end
