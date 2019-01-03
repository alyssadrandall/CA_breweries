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
    @brewery_type = brewery_hash[""]
  end 
  
  def save 
    self.class.all << self 
    self
  end
end  