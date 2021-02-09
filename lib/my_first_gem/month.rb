class MyFirstGem::Month
    
    @@all = []
attr_accessor :name
attr_writer :information

def initialize(name)
    @name = name
    @information = []
    save
end
    def self.all 
        MyFirstGem::Scraper.scrape_months if @@all.empty?
        @@all
        
    end

   
    
    def get_info 

        MyFirstGem::Scraper.scrape_information(self) if @information.empty?
        @information

    end
    
    def save

        @@all << self 
        
    end
end