require "pry"

class Scraper

  BASE_URL = "https://www.theinfatuation.com"

    def self.scrape_shops
      doc = Nokogiri::HTML(open("https://www.theinfatuation.com/seattle/guides/ice-cream-seattle-power-rankings"))
        list = doc.search(".spot-block__title-copy h3").map{|h3| h3.text.strip}
        names = list.uniq
        url = doc.css(".spot-block__title-copy a").attr("href").value
        binding.pry
        names.each.with_index(1) do |name, index| 
          puts "#{index}. #{name}"
          # Shop.new(name)
        # binding.pry
      # map{|h3| h3.text.strip}
      # url = 
      
      # shop_list.uniq.each.with_index(1) do |shop, index| 
      #   puts "#{index}. #{shop}"
      # shop_list.each do |div|
      #   input_arg = {
      #     url: doc.search('.spot-block__title-copy h3 a').attr('href')
      # }
      end
    end

  # shop_doc.css("a").attr("href").value

    def self.scrape_review(shop)
      pg = Nokogiri::HTML(open(BASE_URL + shop.url))
    end
  end