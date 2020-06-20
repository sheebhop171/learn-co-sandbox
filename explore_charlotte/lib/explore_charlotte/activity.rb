class ExploreCharlotte::Activity
  
    attr_accessor :type, :name 
    
  def self.types
    
    activity_1 = self.new 
    activity_1.type = "Attractions"
    activity_1.name = "Nascar"
    
    activity_2 = self.new
    activity_2.type = "Outdoors and Adventure"
    activity_2.name = "White Water Center"
    
    activity_3 = self.new
    activity_3.type = "Restaurants"
    activity_3.name = "Kindred"
    
   [activity_1, activity_2, activity_3]
  end 
  
end 