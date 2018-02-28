# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Shoe.destroy_all

50.times do |index|
  Shoe.create!(make: Faker::SiliconValley.app,
                        model: Faker::SiliconValley.company,
                        color: Faker::Color.color_name,
                        price: Faker::Commerce.price)
end

p "Created #{Shoe.count} Shoes"
