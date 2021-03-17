class MyFirstGem::Cli 
      #advertised_month method
        #create a  birth month method
        #create a zodiac sign information for month
        #list zodiac sign method 
        #create something for the user, create a user method 
    def call
        puts ""
        puts "WELCOME USER!, WELCOME TO THE TRUTH!"
        puts ""
        puts "To see sign for all zodiacs, enter 'x' in the terminal."
        puts ""
        puts "To learn about a random enter 'Random' in the terminal and pick a number from 1-12"
        puts ""
        puts "To exit, enter 'exit' twice in the terminal"
        puts "To see a specific sign enter the first two letters of that sign in the terminal."
      advertised_months
     #birth_month
     loop do 
      menu
     # paragraph
    end
end
#next step 
def menu

    input = gets.strip.downcase

    if input == "x"
        puts "
        »»————-　★　————-««
       1. March 21 - April 19, Aries: ♈︎
       2. April 20 - May 20 ,Taurus: ♉︎
       3. May 21 - June 20, Gemini: ♊︎
       4. June 21 - July 22, Cancer: ♋︎
       5. July 23 - August 22, Leo: ♌︎
       6. August 23 - September 22,Virgo: ♍︎
       7. September 23 - October 22,Libra: ♎︎
       8. October 23 - November 21,Scorpio: ♏︎
       9. November 22 - December 21,Sagittarius: ♐︎
       10. December 22 - January 19,Capricorn: ♑︎
       11. January 20 - February 18,Aquarius: ♒︎
       12. February 19 - March 20, Pisces: ♓︎"
        
    elsif input == "exit"
    puts goodbye

    elsif input == "ar"
        aries 

    elsif input == "ta"
        taurus

    elsif input == "ge"
        gemini

    elsif input == "ca"
        cancer 

    elsif input == "le"
        leo

    elsif input == "vi"
        virgo

    elsif input == "li"
        libra

    elsif  input == "sc"
     scorpio

    elsif input == "sa"
        sagittarius
    
    elsif input == "ca"
        capricorn

    elsif input == "Random"
       user_month

    else 
       invalid_entry

    end
end 

    def invalid_entry
        puts "Input not valid, please try again"
end

def aries


    doc = Nokogiri::HTML(open("https://www.astrology-zodiac-signs.com/zodiac-signs/aires/"))
    words = doc.xpath("//div[@class='add midad']/following-sibling::p")
    paragraph = words.first.text
    puts paragraph
    #binding.pry

end

def taurus


    doc = Nokogiri::HTML(open("https://www.astrology-zodiac-signs.com/zodiac-signs/taurus/"))
    words = doc.xpath("//div[@class='add midad']/following-sibling::p")
    paragraph = words.first.text
    puts paragraph
    #binding.pry

end

def gemini 


    doc = Nokogiri::HTML(open("https://www.astrology-zodiac-signs.com/zodiac-signs/gemini/"))
    words = doc.xpath("//div[@class='add midad']/following-sibling::p")
    paragraph = words.first.text
    puts paragraph
    #binding.pry

end

def cancer


    doc = Nokogiri::HTML(open("https://www.astrology-zodiac-signs.com/zodiac-signs/cancer/"))
    words = doc.xpath("//div[@class='add midad']/following-sibling::p")
    paragraph = words.first.text
    puts paragraph
    #binding.pry

end

def leo


    doc = Nokogiri::HTML(open("https://www.astrology-zodiac-signs.com/zodiac-signs/leo/"))
    words = doc.xpath("//div[@class='add midad']/following-sibling::p")
    paragraph = words.first.text
    puts paragraph
    #binding.pry

end

def virgo


    doc = Nokogiri::HTML(open("https://www.astrology-zodiac-signs.com/zodiac-signs/virgo/"))
    words = doc.xpath("//div[@class='add midad']/following-sibling::p")
    paragraph = words.first.text
    puts paragraph
    #binding.pry

end

def libra


    doc = Nokogiri::HTML(open("https://www.astrology-zodiac-signs.com/zodiac-signs/libra/"))
    words = doc.xpath("//div[@class='add midad']/following-sibling::p")
    paragraph = words.first.text
    puts paragraph
    #binding.pry

end

def scorpio


        doc = Nokogiri::HTML(open("https://www.astrology-zodiac-signs.com/zodiac-signs/scorpio/"))
        words = doc.xpath("//div[@class='add midad']/following-sibling::p")
        paragraph = words.first.text
        puts paragraph
        #binding.pry
   
end

def sagittarius 


    doc = Nokogiri::HTML(open("https://www.astrology-zodiac-signs.com/zodiac-signs/sagittarius/"))
    words = doc.xpath("//div[@class='add midad']/following-sibling::p")
    paragraph = words.first.text
    puts paragraph
    #binding.pry

end

def capricorn


    doc = Nokogiri::HTML(open("https://www.astrology-zodiac-signs.com/zodiac-signs/capricorn/"))
    words = doc.xpath("//div[@class='add midad']/following-sibling::p")
    paragraph = words.first.text
    puts paragraph
    #binding.pry

end

def aquarius


    doc = Nokogiri::HTML(open("https://www.astrology-zodiac-signs.com/zodiac-signs/aquarius/"))
    words = doc.xpath("//div[@class='add midad']/following-sibling::p")
    paragraph = words.first.text
    puts paragraph
    #binding.pry

end

def pisces


    doc = Nokogiri::HTML(open("https://www.astrology-zodiac-signs.com/zodiac-signs/pisces/"))
    words = doc.xpath("//div[@class='add midad']/following-sibling::p")
    paragraph = words.first.text
    puts paragraph
    #binding.pry

end

def goodbye

  puts  "Goodbye and come back again please."
    exit 
end
    def advertised_months
        #to be scraped 
        @months = MyFirstGem::Month.all
       # binding.pry
        #['1.January', '2.February', '3.March', '4.April', '5.May', '6.June', '7.July', '8.August', '9.September', '10.October', '11.November', '12.December']
        
    end
    #next step 
    def birth_month
        puts "Hurry and press it to see it!!!! "
        puts ""
        @months.each.with_index(1) do |month, index| 
            puts "#{index}. #{month.name}"
            #binding.pry 
        end
        
    end
#next step 
    def user_month
        puts "pick a month 1 - 12 "
        picked_month = gets.strip.to_i
        give_out_info_for(picked_month) if correct_input(picked_month, @months)
        
    
end

#next step 
    def correct_input(input, data)

        input.to_i <= data.length && input.to_i  > 0

    end

#next step
    def give_out_info_for(picked_month)
        puts "your month is  #{picked_month}"
        months = MyFirstGem::Month.all
        puts months[picked_month - 1]
        
        
       # MyFirstGem::Info.new("zodiac info", month)
       # MyFirstGem::Info.new("zodiac uninteresting info", month)
     #  month.get_information
       # puts "Truth about this zodiac #{month.name}"
        #month.information.each.with_index(1) do | placeholder, index|
         #   puts "{idex}.#{information.name}"
       # MyFirstGem::Info.all.each do | information |
     
           # puts information.name
           #user_month
      # end
    end
    end
