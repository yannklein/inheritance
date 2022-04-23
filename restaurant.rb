require_relative 'chef'

class Restaurant
  attr_reader :name, :city, :chef
  attr_accessor :capacity

  def initialize(name, city, price, category, capacity, chef_name)
    # STATE = Instance variable 
    @name = name
    @city = city
    @price = price
    @category = category
    @capacity = capacity
    @clients = []
    @chef = Chef.new(chef_name, self) # self is an instance of Restaurant (e.g. gusto)
  end

  # BEHAVIOUR

  def open?
    Time.now.hour >= 17 && Time.now.hour <= 21
  end

  def closed?
    !open?
  end

  def book(client_name)
    @clients << client_name
  end

  def print_clients
    # inside a INSTANCE METHOD, self is the INSTANCE
    puts "Self in an instance:"
    p self # it's an instance of Restaurant (e.g. gusto)!
    p self.class # it's the Restaurant class!
    p self.class.categories
    p Restaurant.categories
    @clients.each do |client_name|
      puts " - #{client_name}"
    end
  end

  #class method, self is the Restaurant class
  def self.categories
    ["burger", "famires", "italian", "sushi"]
  end

  # def name
  #   @name
  # end

  # def city
  #   @city
  # end
end