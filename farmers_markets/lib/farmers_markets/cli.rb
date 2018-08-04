# Our CLI Controller (responsible for business logic or user interactions)
class FarmersMarkets::CLI 
  
  def call 
    list_markets
    market_menu 
    goodbye 
  end 
  
  def list_markets # get markets 
    puts "Top 11 Denver Farmers Markets:"
    @markets = FarmersMarkets::Market.all_markets
    puts "======================================"
    @markets.each.with_index(1) do |market, i|
      puts "#{i}. #{market.name}"
    end 
    puts "======================================"
  end 
  
  def market_menu 
    
    input = nil 
    while input != "exit"
    puts "To learn more about a market, enter the number. To see the list again type list. If you wish to exit, type exit."
    input = gets.strip 
    
      if input.to_i > 0 
        puts ""
        puts @markets[input.to_i-1]
        puts "======================================"
      elsif input == "list"
        list_markets
      else 
        puts "Not really sure what you want..." unless "exit"
      end 
    end
  end 
  
  def goodbye 
    puts "======================================"
    puts "Thanks for stopping by! Enjoy all the wonderful Farmers Markets in Denver!"
  end 
  
end 