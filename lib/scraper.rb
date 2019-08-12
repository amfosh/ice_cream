
BASE_URL = "https://www.theinfatuation.com/"

class Scraper
  def self.scrape_shops
    doc = Nokogiri::HTML(open("https://www.theinfatuation.com/seattle/guides/ice-cream-seattle-power-rankings"))
    shop_elements = doc.css('.spot-block__title-copy').each do |div|
      name = div.css('a')[0].text
      url = div.css('a').attr('href').value
      shop = Shop.new(name, url)
      shop.save
    end
  end

  def self.scrape_review(shop)
    if !shop.review
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
end
