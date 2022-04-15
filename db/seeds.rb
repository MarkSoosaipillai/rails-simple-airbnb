# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'clearing database...'
Flat.destroy_all
puts 'adding new flats...'
4.times do
  Flat.create!(
    name: Faker::Address.community,
    address: Faker::Address.street_address,
    description: Faker::House.room,
    price_per_night: [199.99, 299.99, 399.99, 499.99].sample,
    number_of_guests: rand(1..7)
  )
end
