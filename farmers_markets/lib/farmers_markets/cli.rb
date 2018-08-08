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
    # binding.pry 
    @markets.each.with_index(1) {|market, i| puts "#{i}. #{market.name}".colorize(:green)}
    puts "======================================"
  end 
  
  def market_menu 
    input = nil 
    while input != "exit"
    puts "To learn more about a market, enter the number. To see the list again type list. If you wish to exit, type exit."
    input = gets.strip.downcase 
    
      if input.to_i-1 <= FarmersMarkets::Market.all.size 
        the_market = FarmersMarkets::Market.all[input.to_i-1]
        puts ""
        puts "#{the_market.name}".colorize(:green)
        puts "--------------------------------------"
        puts "#{the_market.time}".colorize(:green)
        puts "Description:".colorize(:green) + " #{the_market.description}" 
        puts "Website:".colorize(:green) + " #{the_market.url}" #if input == the_market.url (this should help with 
        puts "======================================"           #markets that dont have websites..)
      elsif input == "list"
        puts ""
        list_markets
      else 
        puts ""
        puts "Not really sure what you want..." unless input == "exit"
        puts "======================================"
      end 
    end
  end 
  
  def goodbye 
    puts "======================================"
    puts "Thanks for stopping by! Enjoy all the wonderful Farmers Markets in Denver!"
  end 
  
end 