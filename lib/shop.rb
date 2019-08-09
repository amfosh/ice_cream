class Shop
    @@all = []

    attr_accessor :name, :url, :review

    def initialize(name, url)
        @name = name
        @url = url
        @review = review
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end
end