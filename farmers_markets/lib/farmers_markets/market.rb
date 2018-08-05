class FarmersMarkets::Market 
  attr_accessor :name, :time, :description, :market, :url 
  
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
     
    
    name = doc.css("h3#text-block_9-0").first.text
    time = doc.css("div#inline-chop_2-0 p")[1].text
    description = doc.css("div#inline-chop_2-0 p").first.text
    url = doc.css("div#inline-chop_2-0 p a").first.attr('href')
    binding.pry
    
  end 
  
end 