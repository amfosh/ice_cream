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
      while input != "exit"

      shop = Shop.all[input.to_i - 1]

      if shop 
        Scraper.scrape_review(shop)
        puts "Here is the review for #{shop.name}"
        puts "#{shop.review}"
      else
        puts "Invalid. Try again!"
      end
      main_menu
    end

      # html = open("https://www.theinfatuation.com/seattle/guides/ice-cream-seattle-power-rankings")
     

      # binding.pry
     
      # shop_name = name.uniq

        # shop_names << name

        # shop_names.each.with_index(1) do |name, i|
        #   puts "#{i}. #{name}"
      # 
#         self.welcome
#         loop do
#             user_input = main_menu
#             if user_input == 'exit' || user_input.include?('n')
#               return
#             else
#               self.list_shops
#               self.choose_shop
#             end
#           end
#         end 


#     def welcome
#         
#     end

#     def main_menu
#       puts "Are you in the mood for ice cream?"
#       input = gets.strip.downcase
#       return input
#     end

#     def list_shops 
#       Scraper.scrape_shops
#     end

#     def choose_shop
#       puts "Choose an ice cream shop to read more about it."
#       Scraper.scrape_shops
  
#         input = gets.chomp



#         Scraper.scrape_review(shop)
#       # list_shops
#       #   index = gets.strip.to_i - 1
#       #   shop = Shop.all[index]
#       #   Scraper.scrape_shops[index]
#       #   # self.scrape_shops
#       end

#     def display_shop_info(shop)
#  #
#     end
#   end