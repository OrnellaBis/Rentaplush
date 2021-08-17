# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Plush.destroy_all
Booking.destroy_all
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
puts 'Finished plushes!'

puts 'Creating 100 fake bookings...'

50.times do
  booking = Booking.new(
    start_date: Faker::Date.forward(days: 23),
    end_date: Faker::Date.forward(days: 70),
    plush_id: rand(1..100),
    user_id: 1
  )
  booking.save!
end
puts 'Finished booking!'
