require "pry"

class Scraper

    # def self.scrape
      # shops << self.scrape_shops
    # end

    # BASE_URL = "https://www.theinfatuation.com/seattle/guides/ice-cream-seattle-power-rankings"

    def self.scrape_shops
      shop_names = []
      doc = Nokogiri::HTML(open("https://www.theinfatuation.com/seattle/guides/ice-cream-seattle-power-rankings"))
      shop_list = doc.search(".spot-block__title-copy h3").map{|h3| h3.text.strip}
      shop_names << shop_list
      shop_list.uniq.each do |shop| 
        puts "#{shop}"
      # binding.pry

      # each do |shop_doc|

      #   shop_name = shop_doc.css("h3").
      # shop_names
      # .each do |shop_doc|e
      # @@SHOPS << shop_list
      # @@SHOPS
      # shop_list.each do |shop_doc|
    
    end

    def self.scrape_review(shop)
      # doc = Nokogiri::HTML(open("https://www.theinfatuation.com/seattle/guides/ice-cream-seattle-power-rankings"))
      url = shop.url
      html = Nokogiri.HTML(open(url))
      details =
      html.css("a.review")[2].text.split(',').map(&:strip)
      shop.review = ("p")
    end
end
end