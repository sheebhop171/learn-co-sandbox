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
    @activities.each.with_index(1) do |activity, i|
      puts "#{i}. #{activity.name}"
    end 
  end
  
  def get_activities
    
    input = nil
    
    while input != "exit"
    puts "Enter the number of the activity you'd like to explore further. You can also enter 'activities' to start over or enter 'exit' to leave the program."
    
    input = gets.strip
    
    if input.to_i > 0 
      puts @activities[input.to_i-1]
    elsif input == "activities"
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