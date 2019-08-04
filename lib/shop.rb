class Shop
    @@all = []

    attr_accessor :name, :review

    def self.all
        @@all
    end

    def initialize(name:)
        @name = name
        @review = nil
        self.class.all << self
    end
end