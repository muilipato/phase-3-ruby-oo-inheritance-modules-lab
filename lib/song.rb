require 'pry'

class Song
  extend Memorable::Classmethods
  extend Findable::Classmethods
  include Paramable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end


  def self.all
    @@songs
  end

  #def self.reset_all
   # self.all.clear
  #end                    #This has been replaced by module above Memorable::Classmethods

#  def self.count
   # self.all.count
 # end

  def artist=(artist)
    @artist = artist
  end

end
