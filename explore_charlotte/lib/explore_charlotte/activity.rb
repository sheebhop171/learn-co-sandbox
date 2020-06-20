class ExploreCharlotte::Activity
  
    attr_accessor :name
    
  def self.types
    
    activity_1 = self.new 
    activity_1.name = "Attractions"
    
    activity_2 = self.new
    activity_2.name = "Outdoors and Adventure"
    
   [activity_1, activity_2]
  end 
  
end 