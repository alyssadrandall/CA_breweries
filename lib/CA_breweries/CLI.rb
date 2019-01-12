class CABreweries::CLI 
  # BASE_PATH =  
 
  def call 
    puts "Welcome to your directory of California breweries!"
    menu
    goodbye
  end
  
  def menu
    input = nil 
    while input != "exit" 
      puts "To search for breweries by city, enter 'city'."
      puts "To search for breweries by name, enter 'name'."
      puts "To search for a list of breweries, enter 'list'."
      puts "To exit, enter 'exit'."
      input = gets.strip.downcase
      case input
      when "list"
        CABreweries::Brewery.all
        binding.pry 
      when "city"
        breweriews_by_city
      when 'la'
        display_breweries_for("Los Angeles")
      end
      else 
        puts "Not sure what you're requesting. To search for breweries by city, enter 'city', to search for breweries by name, enter 'name', or enter 'exit' to exit."
      end
    end
  end
  
  def breweries_by_city
    puts "To see a list of breweries in a specific city, please enter the city's name you in which you wish to search, or enter 'back' to return to the main menu." 
    
    #while input != back or exit
    input = nil 
    input = gets.strip.downcase
    return if input == "back"
    breweries = CABreweries::Brewery.by_city("Los Angeles")
    if breweries.length > 0 
      
    else
      puts "I couldn't find any breweries in #{input}"
      breweries_by_city
    end
    if input != "back"
      #pulls a list of breweries in the city requested
      puts "To see details about a specific brewery, enter its name."
      brewery_details
    end 
  end 
  
    
    # CABreweries::API.get_breweries
  
  
  def breweries_by_name
    puts "To see a brewery in California and its details, please enter the brewery's name you wish to search:" 
    # here is where we pull from the api the and the respective brewery + details 
    #invoke brewery details method?
  end
  
  def brewery_details
  
  end
  
  def goodbye
    puts "Thanks for exploring, and see you soon!"
  end   
end