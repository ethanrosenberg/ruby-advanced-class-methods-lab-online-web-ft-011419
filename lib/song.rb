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
    song = self.new
  end

  def self.new_by_name(song)
    item = self.create.name = song
    return item
  end
  
end
