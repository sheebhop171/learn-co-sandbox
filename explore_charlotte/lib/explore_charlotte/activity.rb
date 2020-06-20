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
    results = doc.css(".Card.Card--place").text.strip

   # results.each do |r|
    # puts r.css(".Card-title").text.strip
     #puts r.css(".Card-type").text.strip
    #end 


  end
  
end 