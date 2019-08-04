class CLI

    def run
        self.welcome
        html = open ("https://www.theinfatuation.com/seattle/guides/ice-cream-seattle-power-rankings")
        Scraper.scrape_shops
        loop do
            user_input = main_menu
            if user_input == 'exit' || user_input.include?('n')
              return
            else
              self.list_shops
              self.choose_shop
            end
          end
        end 


    def welcome
        puts "Welcome ice cream lover!"
    end

    def main_menu
      puts "Are you in the mood for ice cream?"
      input = gets.strip.downcase
      return input
    end

    def list_shops 
        Shop.all.take(10).each_with_index {|s, i| puts "{i + 1}. #{s.name}"}
    end

    def choose_shop
      puts "Choose an ice cream shop to read more about it."
        index = gets.strip.to_i - 1
        shop = Shop.all[index]
        Scraper.scrape_shops[index]
        # self.scrape_shops
      end

    def display_shop_info(shop)
      puts shop.name
      puts shop.neighborhood
      puts shop.review
    end
  end