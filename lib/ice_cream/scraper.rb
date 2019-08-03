require "pry"

class Scraper

    def self.scrape_shops
      doc = Nokogiri::HTML(open(https://www.theinfatuation.com/seattle/guides/ice-cream-seattle-power-rankings)
      
      shop = self.new
      shop.name = doc.search("h3.spot-block").text.strip

end