class CLI

    def run
        self.welcome
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
      Scraper.scrape_shops
    end

    def choose_shop
      puts "Choose an ice cream shop to read more about it."
      Scraper.scrape_shops
  
        input = gets.chomp



        Scraper.scrape_review(shop)
      # list_shops
      #   index = gets.strip.to_i - 1
      #   shop = Shop.all[index]
      #   Scraper.scrape_shops[index]
      #   # self.scrape_shops
      end

    def display_shop_info(shop)
 #
    end
  end