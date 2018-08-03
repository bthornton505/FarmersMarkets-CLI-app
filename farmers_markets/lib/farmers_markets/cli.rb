# Our CLI Controller (responsible for business logic or user interactions)
class FarmersMarkets::CLI 
  
  def call 
    list_markets
    market_menu 
  end 
  
  def list_markets # get markets 
    puts "Top 11 Denver Farmers Markets:"
    puts "======================================"
    puts <<-DOC
      1. Cherry Creek Fresh Market
      2. South Pearl Street Farmers Market
      3. City Park Esplanade Fresh Market
    DOC
    puts "======================================"
  end 
  
  def market_menu 
    
    input = nil 
    while input != "exit"
    puts "To learn more about a market, enter the number. To see the list again type list. If you wish to exit, type exit."
    input = gets.strip 
    puts "======================================"
      case input 
      when "1"
        puts "More info on Cherry Creek Fresh Market"
        puts "======================================"
      when "2"
        puts "More info on South Pearl Street Farmers Market"
        puts "======================================"
      when "3"
        puts "More info on City Park Esplanade Fresh Market"
        puts "======================================"
      when "list"
        list_markets
      end 
    end
  end 
  
end 