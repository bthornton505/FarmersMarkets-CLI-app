class FarmersMarkets::Market 
  attr_accessor :name, :time, :description, :url, :markets  
  
  def self.all_markets 
    self.scrape_markets
  end 
  
  def self.scrape_markets
    markets = []
    markets << self.scrape_tripsavvy 
    markets 
  end 
  
  def self.scrape_tripsavvy
    doc = Nokogiri::HTML(open("https://www.tripsavvy.com/farmers-markets-in-denver-1062032"))
    
    # doc.css("div.ordered-list__content").each do |markets|
    #   markets.css("div.loc affiliate-block").each do |market|
      # binding.pry
        market = self.new 
        market.name = doc.css("h3#text-block_9-0").first.text.strip 
        market.time = doc.css("div#inline-chop_2-0 p")[1].text.strip 
        market.description = doc.css("div#inline-chop_2-0 p").first.text.strip 
        market.url = doc.css("div#inline-chop_2-0 p a").first.attr('href').strip 
        market
    #   end 
    # end
  end 
  
end 