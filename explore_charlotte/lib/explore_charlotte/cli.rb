#My CLI Controller - responsible for business logic and user interactions

class ExploreCharlotte::CLI
  
  def call
    puts "Welcome to Charlotte! Let’s explore some featured activities based on your interests."
    list_activity_categories
    get_activities
    goodbye
  end 
  
  def list_activity_categories
    puts "What type of activity are you looking to explore?"
    puts "1. Attractions" 
    puts "2. Outdoors & Adventure"
    puts "3. Golf"
    puts "4. Craft Beer"
    puts "5. Restaurants"
  end
  
  def get_activities
    puts "Enter the number of the activity you'd like to explore further or else enter 'exit'."
    
    input = nil
    
    while input != "exit"
    
    input = gets.strip 
    
    case input 
      when "1" 
        puts "Nascar Hall of Fame"
      when "2"
        puts "Whitewater Center"
      when "3" 
        puts "The Learning Center"
      when "4"
        puts "Birdson Brewing"
      when "5"
        puts "Superica"
      end 
    end
  end
  
  def goodbye
    puts "Thanks for visiting Charlotte! See you again next time."
  end 
end 