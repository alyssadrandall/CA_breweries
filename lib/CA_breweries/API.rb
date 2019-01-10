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


# class CABreweries::API 
# BASE_URL= "https://api.openbrewerydb.org/breweries?by_state=CA&per_page=50"

#   def self.get_breweries_by_city(city)
#     results = RestClient.get("#{BASE_URL}&by_city=#{city}")

#     json = JSON.parse(results)
#     json["results"].each do |brewery_hash|
#       CABreweries::Brewery.new(brewery_hash)
#     end
#   end 

#   def self.get_breweries_by_name(name)
#     results = RestClient.get("#{BASE_URL}&by_name=#{name}")

#     json = JSON.parse(results)
#     name.update(json) 
#     end
#   end 
# end 