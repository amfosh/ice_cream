
BASE_URL = "https://www.theinfatuation.com/"

class Scraper
  def self.scrape_shops
      doc = Nokogiri::HTML(open("https://www.theinfatuation.com/seattle/guides/ice-cream-seattle-power-rankings"))
      list = doc.search(".spot-block__title-copy")
      
        name_list = list.search("h3").map{|h3| h3.text.strip}.uniq
        url_list = list.search("a").map{|s| s.attr("href")}
        review_url = url_list.select {|link| link.include?("reviews")} 
      
        name_list.each.with_index do |name, index| 
          shop = Shop.new(name, review_url[index])
          shop.save
        end
      end

    def self.scrape_review(shop)
      url = shop.url
      html = open(BASE_URL + url)
      doc = Nokogiri::HTML(html)
      if doc.search(".post__content__text-block p").text != ""
        shop.review = doc.search(".post__content__text-block p").text 
      else 
        shop.review = doc.search(".spot__description p").text
      end
   end
end
