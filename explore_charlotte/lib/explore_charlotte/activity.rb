class ExploreCharlotte::Activity
  
    attr_accessor :name
    
  def self.types
    
    puts "What type of activity are you looking to explore?"
    puts "1. Attractions" 
    puts "2. Outdoors & Adventure"
    puts "3. Golf"
    puts "4. Craft Beer"
    puts "5. Restaurants"
    
    activity_1 = self.new 
    activity_1.name = "Attractions"
    
    activity_2 = self.new
    activity_2 = "Outdoors & Adventure"
    
    
  end 
  
end 