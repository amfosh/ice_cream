require "pry"

class Scraper

    # def self.scrape
      # shops << self.scrape_shops
    # end

    # BASE_URL = "https://www.theinfatuation.com/seattle/guides/ice-cream-seattle-power-rankings"

    def self.scrape_shops
      html = open("https://www.theinfatuation.com/seattle/guides/ice-cream-seattle-power-rankings")
      doc = Nokogiri::HTML(html)
      shop_list = doc.search(".spot-block__title-copy h3").map{|h3| h3.text.strip}
      shop_list.uniq.each.with_index(1) do |shop, index| 
        puts "#{index}. #{shop}"
      # shop_list.each do |div|
      #   input_arg = {
      #     url: doc.search('.spot-block__title-copy h3 a').attr('href')
      # }
      # binding.pry
    end

    def self.scrape_review(shop)
      puts input_arg
      pg = Nokogiri::HTML(open(BASE_URL))
      url = shop.url
      html = Nokogiri.HTML(open(url))
      details =
      html.css("a.review")[2].text.split(',').map(&:strip)
      shop.review = ("p")
    end
end
end