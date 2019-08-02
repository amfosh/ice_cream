class IceCream::Shop
    @@all = []

    attr_accessor :name, :url, :price, :review

    def self.all
        @@all
    end

    def initialize(name:,  url:)
        @name = name
        @url = url
        @price, @review = nil, nil
        self.class.all << self
    end
end