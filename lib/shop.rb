class Shop
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        # @url = url
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

end