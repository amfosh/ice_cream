class Shop
    @@all = []

    attr_accessor :name, :url, :review

    def initialize(name)
        @name = name
        @@all << self
        # @review = nil
        # self.class.all << self
    end

    def self.all
        @@all
    end

end