class FarmersMarkets::Scraper 
  
  def scrape_tripsavvy
    @doc = Nokogiri::HTML(open("https://www.tripsavvy.com/farmers-markets-in-denver-1062032"))

    # doc.css("div#ordered-list__content").each do |market|
      market = FarmersMarkets::Story.new 
      market.name = doc.css("h3#text-block_9-0").first.text.strip 
      market.time = doc.css("div#inline-chop_2-0 p")[1].text.strip 
      market.description = doc.css("div#inline-chop_2-0 p").first.text.strip 
      market.url = doc.css("div#inline-chop_2-0 p a").first.attr('href').strip 
      market
    # end
  end 
  
  #doc.css("h3 span.link__wrapper").text (This gets the highlands ranch market. It has a link wrapped around it.)

end 