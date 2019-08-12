class CLI

    def run
      puts "Welcome ice cream lover!".bright.magenta
      Scraper.scrape_shops
      list_shops
      main_menu
      end
    end

    def list_shops
      Shop.all.each.with_index(1) do |shop, index| 
        puts "#{index}. #{shop.name}"
      end
    end

    def main_menu
      puts "Please type a shop's number to learn more or 'list' to see the list again. Type 'exit' to leave.".bright.magenta
      input = gets.chomp
      if input == "exit"
        exit
      elsif input == "list"
        list_shops
      else
        shop = Shop.all[input.to_i - 1]

        if shop 
          Scraper.scrape_review(shop)
          puts "Here is the review for #{shop.name}:".bright.magenta
          puts "#{shop.review}"
    
        else
          puts "Invalid input. Please try again!".red
        end
      end
      main_menu
    end
