# Our CLI Controller (responsible for business logic or user interactions)
class FarmersMarkets::CLI 
  
  def call 
    puts "Top 11 Denver Farmers Markets:"
    list_markets
    market_menu 
  end 
  
  def list_markets # get markets 
    puts <<-DOC
      1. Cherry Creek Fresh Market
      2. South Pearl Street Farmers Market
      3. City Park Esplanade Fresh Market
    DOC
  end 
  
  def market_menu 
    puts "Enter the number for the market you would like to learn more about:"
  end 
  
end 