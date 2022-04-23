require_relative 'restaurant'

# instance of Restaurant
saizeria = Restaurant.new(
  "Saizeria",
  "Tokyo",
  "¥",
  "Italian",
  150
)

p saizeria

puts "The restaurant #{saizeria.name} is in #{saizeria.city}"
puts "#{saizeria.name} can hold #{saizeria.capacity} people."
saizeria.capacity = 300
puts "#{saizeria.name} can hold now #{saizeria.capacity} people."

puts "The restaurant is #{saizeria.open? ? "open" : "closed"}."

saizeria.book("Payla")
saizeria.book("Ken")
saizeria.book("Ashish")

p saizeria