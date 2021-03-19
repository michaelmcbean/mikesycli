# require 'pry'
class MyFirstGem::Scraper
    
    def self.scrape_months
        zodiac_signs =

        ["aquarius",
         "pisces",
         "aries",
         "taurus",
         "gemini",
         "cancer",
         "leo",
         "virgo",
         "libra",
         "scorpio",
         "sagittarius",
         "capricorn"]
         zodiac_urls = zodiac_signs.map do |sign|
            "https://www.astrology-zodiac-signs.com/zodiac-signs/#{sign}/"
         end
        zodiac_paragraphs = zodiac_urls.map do |zodiac_url| 
            doc = Nokogiri::HTML(open(zodiac_url))
            p = doc.xpath("//div[@class='add midad']/following-sibling::p")
            first_paragraph_text = p.first.text 
            first_paragraph_text
        end
         zodiac_paragraphs
    end

    def self.scrape_information(sign)
        doc = Nokogiri::HTML(open(sign.url))
        words = doc.xpath("//div[@class='add midad']/following-sibling::p")
        sign.paragraph = words.first.text
    end


    

end

