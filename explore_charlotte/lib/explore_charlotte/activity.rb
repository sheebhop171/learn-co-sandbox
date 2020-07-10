class ExploreCharlotte::Activity
  
    attr_accessor :type, :name 
    
  def self.types
    
    self.scrape_types 
    
  end 
  
  def self.scrape_types
    
    activities = []
    
    activities << self.scrape_cga
    
    activities
  end
  
  def self.scrape_cga

    doc = Nokogiri::HTML(open("https://www.charlottesgotalot.com/eat-drink"))
   #binding.pry
    
    unique_type = doc.search(".Card-type").text.strip.uniq
    name = doc.search(".Card-title").text.strip

  end
  
end 