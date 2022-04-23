require_relative 'restaurant'

class FastFoodRestaurant < Restaurant

  def initialize(name, city, price, category, capacity, chef_name, prep_time)
    # STATE = Instance variable 
    @prep_time = prep_time
    super(name, city, price, category, capacity, chef_name)
    # if super called with no arguments, it take (name, city, price, category, capacity, prep_time)
    # super
    # if you want to call super without argument
    # super()
  end

  def open?
    super || Time.now.hour >= 10 && Time.now.hour <= 12
  end
end