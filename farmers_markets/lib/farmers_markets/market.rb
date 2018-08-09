class FarmersMarkets::Market 
  attr_accessor :name, :time, :description  
  @@all = []
  
  def initialize
    @name = name 
    @time = time 
    @description = description
  end 
  
  def self.all
    @@all
  end 
  
  def save 
    @@all << self 
  end 
end 