class ExploreCharlotte::Activity
  
    attr_accessor :type, :name 
    
  def self.types
    
    self.scrape_types 
    
  end 
  
  def self.scrape_types
    
    activites = []
    
    activities << self.scrape_cga
    
    activities
  end
  
  def self.scrape_cga

    doc = Nokogiri::HTML(open("https://www.charlottesgotalot.com/eat-drink"))
    

  end
  
end 