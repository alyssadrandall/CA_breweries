class CABreweries::CLI 
  # BASE_PATH =  
 
  def start 
    puts "Welcome to your directory of California breweries!"
    puts "To search for breweries by city, enter 'city'."
    puts "To search for breweries by name, enter 'name'."
    
    input = gets.strip.downcase
    
    if input = "city"
      brweriews_by_city
    elsif input = "name"
      breweries_by_name
    end
  end 
  
  
  def breweries_by_city
    puts "To see a list of breweries and their details, please enter the city you in which you wish to search:" 
  # here is where we pull from the api the CA cities and their respective breweries + details 
  
    # CABreweries::API.get_breweries
  end 
  
  def breweries_by_name
  puts "To see a brewery and its details, please enter the brewery's name you wish to search:" 
  # here is where we pull from the api the and the respective brewery + details 
  end
end
    