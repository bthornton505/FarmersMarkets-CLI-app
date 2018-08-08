class FarmersMarkets::Scraper 
  
  def scrape_tripsavvy
    @doc = Nokogiri::HTML(open("https://www.tripsavvy.com/farmers-markets-in-denver-1062032"))
    
    @doc.search("div.ordered-list__content").each do |markets|
      market = FarmersMarkets::Market.new 
      market.name = markets.search("h3").text.strip  
      market.time = markets.search("div#inline-chop_2-0 p")[1].text 
      market.description = markets.search("div#inline-chop_2-0 p").first.text.strip 
      # market.url = markets.search("div#inline-chop_2-0 p a").attr('href').text
      
      market.save
    end
  end
end 