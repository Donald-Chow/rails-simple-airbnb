# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'Cleaning the db....'
Flats.destroy_all

puts 'Creating flats..'

10.times do
  Flat.create!(
    name: Faker::JapaneseMedia::SwordArtOnline.location,
    address: Faker::Address.full_address,
    description: Faker::JapaneseMedia::StudioGhibli.quote,
    price_per_night: (rand(1..30) * 10),
    number_of_guests: rand(2..10)
  )
end

puts "... created #{Flats.count} houses"
