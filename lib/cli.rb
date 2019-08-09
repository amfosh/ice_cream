class CLI

    def run
      puts "Welcome ice cream lover!"
      Scraper.scrape_shops
     
      Shop.all.each.with_index(1) do |shop, index| 
        puts "#{index}. #{shop.name}"
      end
      main_menu
      end
    end

    def main_menu
      puts "Please select a shop to learn more."
      input = gets.chomp
      if input == "exit"
        exit

      else
      shop = Shop.all[input.to_i - 1]

      end

      if shop 
        Scraper.scrape_review(shop)
        puts "Here is the review for #{shop.name}"
        puts "#{shop.review}"
      
      else
        puts "Invalid input. Please try again!"
      end
      main_menu
    end
