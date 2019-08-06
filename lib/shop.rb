class Shop
    @@all = []

    attr_accessor :shop, :url

    def initialize(shop_name, url)
        @shop_name = shop_name
        @@all << self
        @url = url
        # @review = nil
        # self.class.all << self
    end

    def self.all
        @@all
    end

end