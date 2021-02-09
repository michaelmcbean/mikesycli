require 'pry'
class MyFirstGem::Scraper
    
    def self.scrape_months

        doc = Nokogiri::HTML(open("https://www.astrology-zodiac-signs.com/"))

        results = doc.css('select#month')
        puts results.count

        results.each do |m|
           name = m.text
           MyFirstGem::Month.new(name)
        end
       # binding.pry
      
    end

    def self.scrape_information(month)
        MyFirstGem::Info.new("zodiac info", month)
        MyFirstGem::Info.new("zodiac uninteresting info", month)
        
    end
end

