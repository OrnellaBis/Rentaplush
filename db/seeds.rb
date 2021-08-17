# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  plush = Plush.new(name: "Bébé Yoda", category: "Films", description: "Cette peluche est une adorable créature pour vivre des aventures intergalactiques et pleines de calins.", localisation: "Paris 15ème", size: rand(1..10), price_per_day: rand(15..100), user_id: 1)
  plush_1 = Plush.new(name: "Edward", category: "Animaux", description: "Un bébé renard tout mignon et tout soyeux", localisation: "Bordeaux", size: rand(1..10), price_per_day: rand(15..100), user_id: 1)
  plush_2 = Plush.new(name: "Belby Toucan", category: "Animaux", description: "Un toucan qui ne fait pas de boucan.", localisation: "Limoges", size: rand(1..10), price_per_day: rand(15..100), user_id: 1)
  plush_3 = Plush.new(name: "Kim", category: "Kawaï", description: "Kim K.", localisation: "Lyon", size: rand(1..10), price_per_day: rand(15..100), user_id: 1)
  plush_4 = Plush.new(name: "Smili", category: "Emoji", description: "Smili vous rendra instantanément le sourire.", localisation: "Hossegor", size: rand(1..10), price_per_day: rand(15..100), user_id: 1)
  plush.save!
  plush_1.save!
  plush_2.save!
  plush_3.save!
  plush_4.save!
