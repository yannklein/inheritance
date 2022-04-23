require_relative 'restaurant'

class FancyRestaurant < Restaurant

  def initialize(name, city, price, category, capacity, chef_name, stars)
    # STATE = Instance variable     
    @stars = stars
    # call the #initialize from Restaurant
    super(name, city, price, category, capacity, chef_name)
  end

  def print_clients
    puts "Access restricted!!"
  end
end