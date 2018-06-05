# Pirates should have a name, weight, and height. You will also need a class method that returns all the pirates.

class Pirate
  attr_accessor :name, :weight, :height
  ALL = []

  def initialize(name,weight,height)
    @name = name
    @weight = weight
    @height = height
    ALL << self
  end

  def self.all
    ALL
  end

end