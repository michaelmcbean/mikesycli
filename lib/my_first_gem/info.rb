# require 'pry'
class MyFirstGem::Info
    
    @@all = []
attr_accessor :name, :month, :key_knowledge

def initialize(name,month)
    @name = name
    @month = month
    @information = []
    add_to_month 
    @month.events << self 
    save
end
 
def add_to_month 
   # binding.pry
    @month.events << self unless @month.eventsinclude?(self)
   

end
    
    
    def save

        @@all << self 
        
    end
end