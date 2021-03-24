require_relative "./my_first_gem/version"
require_relative "./my_first_gem/cli"
require_relative "./my_first_gem/scraper"
require_relative "./my_first_gem/info"
require_relative "./my_first_gem/sign"


require 'pry'
require 'nokogiri'
require "open-uri"
module MyFirstGem
  class Error < StandardError; end
 
end
# class Sign
#   include MyFirstGem
#   attr_accessor :name, :paragraph, :url

#   @@all = []
#   def self.all
#       @@all
#   end

#   def initialize(name)
#       @name = name
#       @url = "https://www.astrology-zodiac-signs.com/zodiac-signs/#{name}"
#       @@all << self
#   end

#   def self.save
#       self             
#   end
# end
# require 'pry'
# class Scraper
#     include MyFirstGem
#     attr_accessor :name

#     def intialze
      
#     end
#   def scrape_months
#       zodiac_signs =

#       ["aquarius",
#        "pisces",
#        "aries",
#        "taurus",
#        "gemini",
#        "cancer",
#        "leo",
#        "virgo",
#        "libra",
#        "scorpio",
#        "sagittarius",
#        "capricorn"]
#        zodiac_urls = zodiac_signs.map do |sign|
#           "https://www.astrology-zodiac-signs.com/zodiac-signs/#{sign}/"
#        end
#       zodiac_paragraphs = zodiac_urls.map do |zodiac_url| 
#           doc = Nokogiri::HTML(open(zodiac_url))
#           p = doc.xpath("//div[@class='add midad']/following-sibling::p")
#           first_paragraph_text = p.first.text 
#           first_paragraph_text
#       end
#        zodiac_paragraphs
#   end

#   def scrape_information(sign)
#       doc = Nokogiri::HTML(open("https://www.astrology-zodiac-signs.com/zodiac-signs/#{sign}/"))
#       words = doc.xpath("//div[@class='add midad']/following-sibling::p")
#       sign = words.first.text
#   end


  

# end