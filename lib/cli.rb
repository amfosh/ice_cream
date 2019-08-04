class CLI

    def run
        self.welcome
        loop do
            user_input = main_menu
            if user_input == 'exit' || user_input.include?('n')
              return
            else
              self.choose_shop
              self.list_shops
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
      Scraper.scrape_shops
    end

    def choose_shop
      puts "Choose an ice cream shop to read more about it."
      list_shops
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