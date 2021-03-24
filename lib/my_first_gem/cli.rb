require 'pry'
class MyFirstGem::Cli
      #advertised_month method
        #create a  birth month method
        #create a zodiac sign information for month
        #list zodiac sign method 
        #create something for the user, create a user method 
    def call
        # create all sign objects based on the names of the signs (hardcoded array of names)
        sign_names = 
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

        sign_names.each do |name|
            MyFirstGem::Sign.new(name)
        end
    
        puts ""
        puts "WELCOME USER!, WELCOME TO THE TRUTH!"

      	
      #birth_month
     	loop do 
      	
        menu
    
     	# paragraph
    end
end
#next step 
def menu
    puts ""
    puts "To see sign for all zodiacs, enter 'x' in the terminal."
    puts ""
    puts "To exit, enter 'exit' twice in the terminal"
    puts "To see a specific sign, enter the full name of that sign or a number from 1-12 in the terminal."

    input = gets.strip.downcase
	
    # "scraper" will be a new Scraper object
    scraper = MyFirstGem::Scraper.new

    # This will be the list of paragraphs that we will compare against
    months = scraper.scrape_months
  
    signs = MyFirstGem::Sign.all
  
    if input == "x"
        puts "
        »»————-　★　————-««
        1. January 20 - February 18, Aquarius: ♒︎
        2. February 19 - March 20, Pisces: ♓︎
        3. March 21 - April 19, Aries: ♈︎
        4. April 20 - May 20 ,Taurus: ♉︎
        5. May 21 - June 20, Gemini: ♊︎
        6. June 21 - July 22, Cancer: ♋︎
        7. July 23 - August 22, Leo: ♌︎
        8. August 23 - September 22, Virgo: ♍︎
        9. September 23 - October 22, Libra: ♎︎
        10. October 23 - November 21, Scorpio: ♏︎
        11. November 22 - December 21, Sagittarius: ♐︎
        12. December 22 - January 19, Capricorn: ♑︎"
       
        
    elsif input == "exit"
        goodbye

    elsif sign = signs.find{|sign| sign.name == input}
        
        if !sign.paragraph
     	    scraper.scrape_information(sign)
        end

        puts sign.paragraph
    elsif is_valid_number(input)
    puts scraper.scrape_information(input.to_i)

    else 
       	invalid_entry
    end
end 

# Method to determine if input is a number between 1 and 12
def is_valid_number(input)

  nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
  
  if nums.include?(input.to_i)
  	return true
  else
    return false
  end
end
  
def invalid_entry
    puts "Input not valid, please try again"
end
  
def valid_sign(input)
	# determine if that sign has been scraped yet
  
	MyFirstGem::Sign.all.find{|sign| sign.name[0..2].downcase == input}

end


def goodbye
  	puts  "Goodbye and come back again please."
    exit 
end
    # def advertised_months
    #     #to be scraped 
    #     @months = MyFirstGem::Month.all
    #    # binding.pry
    #     #['1.January', '2.February', '3.March', '4.April', '5.May', '6.June', '7.July', '8.August', '9.September', '10.October', '11.November', '12.December']
        
    # end
    #next step 
#     def birth_month
#         puts "Hurry and press it to see it!!!! "
#         puts ""
#         @months.each.with_index(1) do |month, index| 
#             puts "#{index}. #{month.name}"
#             #binding.pry 
#         end
        
#     end
# #next step 
#     def user_month
#         puts "pick a month 1 - 12 "
#         picked_month = gets.strip.to_i
#         give_out_info_for(picked_month) if correct_input(picked_month, @months)
        
    
# end

#next step 
    def correct_input(input, data)

        input.to_i <= data.length && input.to_i  > 0

    end

#next step
    # def give_out_info_for(picked_month)
    #     puts "your month is  #{picked_month}"
    #     months = MyFirstGem::Month.all
    #     puts months[picked_month - 1]
        
        
    #    # MyFirstGem::Info.new("zodiac info", month)
    #    # MyFirstGem::Info.new("zodiac uninteresting info", month)
    #  #  month.get_information
    #    # puts "Truth about this zodiac #{month.name}"
    #     #month.information.each.with_index(1) do | placeholder, index|
    #      #   puts "{idex}.#{information.name}"
    #    # MyFirstGem::Info.all.each do | information |
     
    #        # puts information.name
    #        #user_month
    #   # end
    # end
end
