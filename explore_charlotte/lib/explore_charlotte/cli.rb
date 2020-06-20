#My CLI Controller - responsible for business logic and user interactions

class ExploreCharlotte::CLI
  
  def call
    
    puts "Welcome to Charlotte! Let’s explore some featured activities based on your interests."
    list_activity_categories
    get_activities
    goodbye
  end 
  
  def list_activity_categories
    
    @activities = ExploreCharlotte::Activity.types
  end
  
  def get_activities
    puts "Enter the number of the activity you'd like to explore further. You can also enter 'activities' to start over or enter 'exit' to leave the program."
    
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
      when "activities"
        list_activity_categories
      else
        puts "Please enter a valid option. You can either enter 'activities' or 'exit'."
      end 
    end
  end
  
  def goodbye
    puts "Thanks for visiting Charlotte! See you again next time."
  end 
end 