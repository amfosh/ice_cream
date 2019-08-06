require "pry"

class Scraper

    def self.scrape_shops
      doc = Nokogiri::HTML(open("https://www.theinfatuation.com/seattle/guides/ice-cream-seattle-power-rankings"))
      doc.search(".spot-block__title-copy").each do |shop_doc|
        name = shop_doc.search("h3").text.strip

        Shop.new(name)
        Shop.all.uniq.each.with_index(1) do |shop, index| 
          puts "#{index}. #{shop.name}"
      # map{|h3| h3.text.strip}
      # url = 
      
      # shop_list.uniq.each.with_index(1) do |shop, index| 
      #   puts "#{index}. #{shop}"
      # shop_list.each do |div|
      #   input_arg = {
      #     url: doc.search('.spot-block__title-copy h3 a').attr('href')
      # }
      # binding.pry
      end
    end
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