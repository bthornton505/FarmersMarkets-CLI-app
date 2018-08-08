class FarmersMarkets::Market 
  attr_accessor :name, :time, :description, :url  
  @@all = []
  
  def intialize
    @name = name 
    @time = time 
    @description = description
    @url = url 
  end 
  
  def self.all
    @@all
  end 
  
  def save 
    @@all << self 
  end 
end 