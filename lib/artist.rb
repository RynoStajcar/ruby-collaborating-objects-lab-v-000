class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def add_song(name)
    @songs << name
  end

  def save
    @@all << self
  end

  def self.create_by_name(name)
    song = self.new
    song.save
    song.name = name
    song
  end

  def self.find_by_name(name)
    self.all.detect do |song|
      if song.name == name
        song.name
      end
    end
  end

  def self.find_or_create_by_name(name)
    self.all.detect do |artist|
      if artist.name == name
        artist.name
      else
        song = self.new
        song.save
        song.name = name
    end
  end

  def print_songs
  end

end
