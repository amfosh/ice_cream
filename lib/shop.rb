class Shop
    @@all = []

    attr_accessor :name, :url, :review

    def initialize(name, url)
        @name = name
        @@all << self
        @url = url
        # @review = nil
        # self.class.all << self
    end

    def self.all
        @@all
    end

end