class FarmersMarkets::Scraper 
  
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

    # doc.css("div#ordered-list__content").each do |market|
      # markets.each do |market| 
        market_1 = self.new 
        market_1.name = doc.css("h3#text-block_9-0").first.text.strip 
        market_1.time = doc.css("div#inline-chop_2-0 p")[1].text.strip 
        market_1.description = doc.css("div#inline-chop_2-0 p").first.text.strip 
        market_1.url = doc.css("div#inline-chop_2-0 p a").first.attr('href').strip 
        market_1
        
        market_2 = self.new 
        market_2.name = doc.css("h3#text-block_9-0")[1].text.strip 
        market_2.time = doc.css("div#inline-chop_2-0 p")[3].text.strip 
        market_2.description = doc.css("div#inline-chop_2-0 p")[2].text.strip 
        market_2.url = doc.css("div#inline-chop_2-0 p a")[1].attr('href').strip 
        market_2
        
        [market_1, market_2]
        
      # end 
    # end
  end 
  
  #doc.css("h3 span.link__wrapper").text (This gets the highlands ranch market. It has a link wrapped around it.)

end 