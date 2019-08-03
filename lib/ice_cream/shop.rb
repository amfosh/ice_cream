class Shop
    @@all = []

    attr_accessor :name, :url, :neighborhood, :review

    def self.all
        @@all
    end

    def initialize(name:,  url:)
        @name = name
        @url = url
        @neighborhoot, @review = nil, nil
        self.class.all << self
    end
end