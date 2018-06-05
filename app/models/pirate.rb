class Pirate

  ALL = []

  attr_accessor :name, :weight, :height

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    ALL << self
  end

  def self.all
    ALL
  end

  def self.clear
    ALL.clear
  end

end
