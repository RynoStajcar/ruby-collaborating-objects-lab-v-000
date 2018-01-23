class Song
  require.pry
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    binding.pry
    song = Song.new(file)
    file
  end

end
