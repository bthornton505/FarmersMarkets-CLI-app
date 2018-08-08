class FarmersMarkets::Market 
  attr_accessor :name, :time, :description, :url  
  @@all = []
  
  def self.all
    @@all
  end 
  
  def save 
    @@all << self 
  end 
end 