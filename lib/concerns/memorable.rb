module Memorable #This module tells a class to keep track of its won instances
  module Classmethods
    def reset_all
      self.all.clear
    end
    def count
      self.all.count
    end
  end

  module Instancemethods
    def initialize
      self.class.all << self
    end
  end

end

