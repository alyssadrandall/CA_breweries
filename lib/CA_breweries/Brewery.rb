class CABreweries::Brewery 
  attr_accessor :id, :name, :brewery_type, :street, :city, :postal_code, :phone, :website_url
  
  @@all = []
  @@cities = []
  
  def self.all 
    @@all 
    if @@all = []
      @@all = create_from_collection(CABreweries::API.get_breweries)
    else 
      @@all 
    end 
  end 
  
  def self.cities
    @@cities 
  end 
  
  def initialize(brewery_hash)
    brewery_hash.each do |method, arg|
      if self.respond_to?("#{method}=")
        self.send("#{method}=", arg)
      end 
    end 
    @@cities << city unless @@cities.include?(city)
  end 
  
  # def save 
  #   self.class.all << self 
  #   self
  # end

  def self.create_from_collection(breweries)
    breweries.collect do |brewery_hash|
      brewery = self.new(brewery_hash)
    end 
  end 
end