class MyFirstGem::Scraper

    def scrape_months
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

    def scrape_information(sign)
        if sign.is_a?(String)
          	doc = Nokogiri::HTML(open(sign.url))
          	words = doc.xpath("//div[@class='add midad']/following-sibling::p")
          	sign.paragraph = words.first.text
        else
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
          
        	doc = Nokogiri::HTML(open(
              "https://www.astrology-zodiac-signs.com/zodiac-signs/#{zodiac_signs[sign - 1]}/"
            ))
          	words = doc.xpath("//div[@class='add midad']/following-sibling::p")
            sign = MyFirstGem::Sign.all.find{|astro_sign| astro_sign.name.downcase == zodiac_signs[sign - 1]}
          	sign.paragraph = words.first.text
        end
    end
end
