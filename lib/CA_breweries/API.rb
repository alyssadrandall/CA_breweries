require "open-uri"

class CABreweries::API 
  def self.get_breweries
    data = open("https://api.openbrewerydb.org/breweries?by_state=CA&per_page=50").read 
    data_in_ruby = JSON.parse(data) 
    response = data_in_ruby 
    page = 1
    while response.length > 0 
      page += 1 
      data = open("https://api.openbrewerydb.org/breweries?by_state=CA&per_page=50&page=#{page}").read 
      response = JSON.parse(data) 
      data_in_ruby.concat(response)
    end 
    data_in_ruby
  end 
end 