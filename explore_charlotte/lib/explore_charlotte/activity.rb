class ExploreCharlotte::Activity
  
    attr_accessor :type
    
  def self.types
    
    activity_1 = self.new 
    activity_1.type = "Attractions"
    
    activity_2 = self.new
    activity_2.type = "Outdoors and Adventure"
    
   [activity_1, activity_2]
  end 
  
end 