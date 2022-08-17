# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
r1 = { name: 'Bosco', address: '7 Boundary St, London E2 7JE', phone_number: 123_456_78, category: 'italian' }
r2 = { name: 'Naka Sushi', address: '56A Shoreditch High St, London', phone_number: 195_857_57, category: 'japanese' }
r3 = { name: 'Petit', address: '100A Belford, London E9', phone_number: 175_800_55, category: 'french' }

[r1, r2, r3].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts 'Finished!'
