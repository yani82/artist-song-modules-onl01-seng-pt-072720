require 'pry'
class Artist
  
  attr_accessor :name
  attr_reader :songs
  
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable

  @@artists = []

  def initialize
    super
    @songs = []
  end

  def self.all
    @@artists
  end
  
  def add_song(song) 
    @songs << song 
    song.artist = self 
  end

  def add_songs(song)
    song.each { |songs| add_song(song) }
  end
  
end
