# require_relative "../my_first_gem"
class MyFirstGem::Sign
    attr_accessor :name, :paragraph, :url

    @@all = []
    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @url = "https://www.astrology-zodiac-signs.com/zodiac-signs/#{name}/"
        @@all << self
    end

    # def self.save
    #     self             
    # end
end
    
    
    