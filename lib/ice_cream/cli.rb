class IceCream::CLI

    def call
        self.welcome
        # Scraper.scrape_shops
        loop do
            user_input = list_shops
            if user_input == 'exit' || user_input.include?('n')
              return
            else
              self.list_shops
              self.choose_shop
            end
          end
  
    end

    def welcome
        puts "Welcome! Are you in the mood for ice cream?"
        input = gets.strip.downcase
        return input
    end
        
    def list_shops 
        puts "shops 1-10"
    end

    def choose_shop
        puts "Choose an ice cream shop to read more about it."
          index = gets.strip.to_i - 1
          shop = Shop.all[index]
          Scraper.scrape_info(shop)
          self.display_shop_info(shop)
      end
    end