class CABreweries::CLI 
  # BASE_PATH =  
 
  def call 
    puts "Welcome to your directory of California breweries!"
    menu
    goodbye
  end
  
  def menu
    puts "To search for breweries by city, enter 'city'."
    puts "To search for breweries by name, enter 'name'."
    puts "To exit, enter 'exit'."
    input = nil 
    while input != "exit" 
      input = gets.strip.downcase
      case input
      when "city"
        brweriews_by_city
      when "name"
        breweries_by_name
      else 
        puts "Not sure what you're requesting. To search for breweries by city, enter 'city', to search for breweries by name, enter 'name', or enter 'exit' to exit."
      end
    end
  end
  
  def breweries_by_city
    puts "To see a list of breweries in a specific city, please enter the city's name you in which you wish to search, or enter 'back' to return to the main menu." 
      input = nil 
      input = gets.strip.downcase
      if "*--city?--*"
        #pull information on that city and its respective breweries
        puts "To see details about a specific brewery, enter its name."
          brewery_details
      elsif "back"
        menu
      end 
    end 
  end
      
    
    # CABreweries::API.get_breweries
  end 
  
  def breweries_by_name
    puts "To see a brewery and its details, please enter the brewery's name you wish to search:" 
    # here is where we pull from the api the and the respective brewery + details 
  end
  
  def goodbye
    puts "Thanks for exploring, and see you soon!"
  end   
end
    