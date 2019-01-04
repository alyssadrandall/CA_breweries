require "open-url"

class BreweryAPI::API 
  def self.get_breweries
    data = open("https://api.openbrewerydb.org/breweries?by_state=CA").read 
    data_in_ruby = JSON.parse(data) 
  end 
end 

breweries = BreweryAPI.get_breweries
# name, brewery_type, street, city, postal_code, phone, website_url

class Brewery
  attr_accessor :name, :brewery_type, :street, :city, :postal_code, :phone, :website_url
  
  @@all = []
  
  def.self.all 
    @@all 
  end 
  
  def initialize(brewery_hash)
    @name = brewery_hash["name"]
    @brewery_type = brewery_hash["brewery type"]
    @street = brewery_hash["street"]
    @city = brewery_hash["city"]
    @postal_code = brewery_hash["postal code"]
    @phone = brewery_hash["phone"]
    @website_url = brewery_hash["website url"]
    brewery_hash.each do |method, arg|
      if self.respond_to?("#{method}=")
        self.send("#{method}=", arg)
      end 
    end  
  end 
  
  def save 
    self.class.all << self 
    self
  end
end  

breweries.collect do |brewery_hash|
  brewery = Brewery.new(brewery_hash)
  brewery.save
end 