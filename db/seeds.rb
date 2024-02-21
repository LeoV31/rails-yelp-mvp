# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
rest1 = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "028492", category:"chinese"}
rest2 = {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "028493", category:"italian"}
rest3 = {name: "Mcdo", address: "234 Shoreditch High St, London E1 6PQ", phone_number: "028494", category:"japanese"}
rest4 = {name: "BK", address: "345 Shoreditch High St, London E1 6PQ", phone_number: "028495", category:"french"}
rest5 = {name: "Starbuck", address: "3245 Shoreditch High St, London E1 6PQ", phone_number: "028496", category:"belgian"}

[rest1, rest2, rest3, rest4, rest5].each do |restau|
  restaurant = Restaurant.create!(restau)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
