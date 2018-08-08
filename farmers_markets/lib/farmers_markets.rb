require 'nokogiri'
require 'open-uri'
require 'pry'
require 'colorize'



module FarmersMarketsCLI 
  require_relative "./farmers_markets/version"
  require_relative './farmers_markets/cli'
  require_relative './farmers_markets/market'
  require_relative './farmers_markets/scraper'
end