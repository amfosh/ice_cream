require "pry"

BASE_URL = "https://www.theinfatuation.com/"
class Scraper
  def self.scrape_shops
      doc = Nokogiri::HTML(open("https://www.theinfatuation.com/seattle/guides/ice-cream-seattle-power-rankings"))
        
      list = doc.search(".spot-block__title-copy h3").map{|h3| h3.text.strip}
        names = list.uniq
      url = doc.search(".spot-block__title-copy a").attr("href").text
        # Shop.new(name)
        names.each do |name, url| 
          shop = Shop.new(name, url)
          shop.save
        end
   end

   def self.scrape_review(shop)
    url = shop.url
    html = open(BASE_URL + url)
    doc = Nokogiri::HTML(html)
    shop.review = doc.search(".post__content__text-block p")[0].text
   end
end

    #   doc = Nokogiri::HTML(open("https://www.theinfatuation.com/seattle/guides/ice-cream-seattle-power-rankings"))
  #   names = doc.css(".spot-block__title-copy h3").map{|h3| h3.text.strip}
  #   name = names.uniq
  #     url = doc.css(".spot-block__title-copy a").attr("href").value
  #     shop = Shop.new(name, url)
  #     binding.pry
  #   end
  # end
#           # Shop.new(name)
#         # binding.pry
#       # map{|h3| h3.text.strip}
#       # url = 
      
#       # shop_list.uniq.each.with_index(1) do |shop, index| 
#       #   puts "#{index}. #{shop}"
#       # shop_list.each do |div|
#       #   input_arg = {
#       #     url: doc.search('.spot-block__title-copy h3 a').attr('href')
#       # }
#       end
#     end

#   # shop_doc.css("a").attr("href").value

#     def self.scrape_review(shop)
#       pg = Nokogiri::HTML(open(BASE_URL + shop.url))
#     end
#   end