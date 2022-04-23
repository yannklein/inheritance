require_relative 'fancy_restaurant'
require_relative 'fast_food_restaurant' 
require_relative 'restaurant'
require 'json'

gusto = FancyRestaurant.new(
  "GASTO",
  "Omiya",
  "$$$",
  "Family restaurant",
  50,
  "Ethan",
  3
)

mcdonalds = FastFoodRestaurant.new(
  "McDo",
  "Osaka",
  "$",
  "Burger",
  70,
  "Ethan",
  5
)

p gusto.name
puts "The restaurant is #{gusto.open? ? "open" : "closed"}."

p mcdonalds.name
puts "The restaurant is #{mcdonalds.open? ? "open" : "closed"}."

gusto.book("Hamish")
gusto.book("Satoka")
gusto.book("Jessica")


mcdonalds.book("Zach")
mcdonalds.book("Raj")

puts "Gusto:"
gusto.print_clients
puts "McDo:"
mcdonalds.print_clients

FastFoodRestaurant # class
gusto # instance
Time # class
JSON # class

gusto.open? # instance method, a method called on an instance
Time.now # class method, a method called on a class
JSON.parse('{}') # class method, a method called on a class
p Restaurant.categories # class method, a method called on a class

# ethan = Chef.new("Ethan", mcdonalds)
p mcdonalds
# p mcdonalds.chef
p mcdonalds.chef.restaurant