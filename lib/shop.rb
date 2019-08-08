class Shop
    @@all = []

    attr_accessor :name, :url, :review

    def initialize(name, url)
        @name = name
        @url = url
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

end