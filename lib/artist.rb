class Artist

  attr_accessor :name, :song 

  def initialize(name)
    @name = name
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|a| a.artist == self}
  end

  def add_song_by_name(name)
    self.song.name
  end

end
