require "pry"

BASE_URL = "https://www.theinfatuation.com/"
class Scraper
  def self.scrape_shops
      doc = Nokogiri::HTML(open("https://www.theinfatuation.com/seattle/guides/ice-cream-seattle-power-rankings"))
      list = doc.search(".spot-block__title-copy")
      
        name_list = list.search("h3").map{|h3| h3.text.strip}
          names = name_list.uniq
          url = list.search("a").attr("href").text
        
      names.each do |name| 
        shop = Shop.new(name, url)
        shop.save
      end
    end

    def self.scrape_review(shop)
      url = shop.url
      html = open(BASE_URL + url)
      doc = Nokogiri::HTML(html)
      shop.review = doc.search(".post__content__text-block p").text
    # binding.pry
   end
end
