class FarmersMarkets::Market 
  attr_accessor :name 
  
  def self.all_markets 
    
    FarmersMarkets::MarketScraper.new 
    
    # market_1 = self.new 
    # market_1.name = "Cherry Creek Fresh Market"
    
    # market_2 = self.new 
    # market_2.name = "South Pearl Street Farmers Market"
    
    # market_3 = self.new 
    # market_3.name = "City Park Esplanade Fresh Market"
    
    [market_1, market_2, market_3]
  end 
  
end 