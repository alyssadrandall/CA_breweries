class CABreweries::CLI 
 
  def start 
    puts "Welcome to your directory of California breweries!"
    puts "To search for breweries by city, enter 'city'."
    puts "To search for breweries by postal code, enter 'postal code'."
    
    input = gets.strip.downcase
    
    if input = "city"
      brweriews_by_city
    elsif input = "postal code"
      breweries_by_postal_code
    end
  end 
  
  
  def brweriews_by_city
  #puts "To see a list of breweries and their details, please enter the city you in which you wish to search:" 
  # here is where we pull from the api the CA cities and their respective breweries + details 
  end 
  
  def brweriews_by_postal_code
  #puts "To see a list of breweries and their details, please enter the postal code you in which you wish to search:" 
  # here is where we pull from the api the CA postal codes and their respective breweries + details 
  end
end
    