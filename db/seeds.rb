# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Creating 100 fake plushes...'

100.times do
  plush = Plush.new(
    name: Faker::Name.name,
    category: Faker::Creature::Animal.name,
    description: Faker::Quote,
    localisation: Faker::Address.city,
    size: rand(1..10),
    price_per_day: rand(15..100),
    user_id: 1
  )
  plush.save!
end
puts 'Finished!'
