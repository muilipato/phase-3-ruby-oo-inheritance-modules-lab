require 'pry'

class Artist
  extend Memorable::Classmethods
  extend Findable::Classmethods
  include Paramable
include Memorable::Instancemethods
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super #Tells our Artist.initialize method to use the code in the parent's intialize method and also any code that will be written here in this intialize method
    @songs = []
  end


  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
