class CLI

    def run
      puts "Welcome ice cream lover!".bright.magenta
      Scraper.scrape_shops
     
      Shop.all.each.with_index(1) do |shop, index| 
        puts "#{index}. #{shop.name}"
      end
      main_menu
      end
    end

    def main_menu
      puts "Please type a shop's number to learn more or type 'exit' to leave.".bright.magenta
      input = gets.chomp
      if input == "exit"
        exit
      else
      shop = Shop.all[input.to_i - 1]
      end

      if shop 
        Scraper.scrape_review(shop)
        puts "Here is the review for #{shop.name}:".bright.magenta
        puts "#{shop.review}"
      
      else
        puts "Invalid input. Please try again!".red
      end
      main_menu
    end
