class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    song = Song.new(file)
    array = []
    array << song.split(" - ")
    array[1]
  end

end
