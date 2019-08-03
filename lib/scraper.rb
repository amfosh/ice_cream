require "pry"

class Scraper

    def self.scrape_shops
      doc = Nokogiri::HTML(open("https://www.theinfatuation.com/seattle/guides/ice-cream-seattle-power-rankings"))
      shop_list = doc.search("h3").text.strip
      shop_list
      binding.pry
    end
end