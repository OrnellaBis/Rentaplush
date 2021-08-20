require "open-uri"
Plush.destroy_all
User.destroy_all

user = User.create(first_name: "lambda", last_name: "lamdab", email: "test@gmail.com", password: "coucou")
file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
plushers = [

  plush1 = Plush.new(name: "Fox", category: "Animaux", localisation: "2 Rue Oberkampf, Paris", size: rand(1..10), price_per_day: rand(15..100), user: user, description: "Un bébé renard tout mignon et tout soyeux"),
  plush2 = Plush.new(name: "Baby Yoda", category: "Films", localisation: "1 Rue Oberkampf, Paris", size: rand(1..10), price_per_day: rand(15..100), user: user, description: "Cette peluche est une adorable créature pour vivre des aventures intergalactiques et pleines de calins."),
  plush3 = Plush.new(name: "Belby Toucan", category: "Animaux", localisation: "3 Rue Oberkampf, Paris", size: rand(1..10), price_per_day: rand(15..100), user: user, description: "Un bébé renard tout mignon et tout soyeux"),
  plush4 = Plush.new(name: "Kim", category: "Kawaï", localisation: "4 Rue Oberkampf, Paris", size: rand(1..10), price_per_day: rand(15..100), user: user, description: "Kim K."),
  plush5 = Plush.new(name: "Smili", category: "Emoji", localisation: "5 Rue Oberkampf, Paris", size: rand(1..10), price_per_day: rand(15..100), user: user, description: "Smili vous rendra instantanément le sourire."),
  plush6 = Plush.new(name: "Freddy", category: "Monstre", localisation: "6 Rue Oberkampf, Paris", size: rand(1..10), price_per_day: rand(15..100), user: user, description: "Si vous aimez freddy pour halloween louer là"),
  plush = Plush.new(name: "It", category: "Monstre", localisation: "7 Rue Oberkampf, Paris", size: rand(1..10), price_per_day: rand(15..100), user: user, description: "Le clown ça et de retour pour halloween"),
  plush = Plush.new(name: "Jason", category: "Monstre", localisation: "8 Rue Oberkampf, Paris", size: rand(1..10), price_per_day: rand(15..100), user: user, description: "Prenez-garde on ne le remarque pas"),
  plush = Plush.new(name: "Mickael mayers", category: "Monstre", localisation: "9 Rue Oberkampf, Paris", size: rand(1..10), price_per_day: rand(15..100), user: user, description: "Ideal pour holloween"),
  plush = Plush.new(name: "Drago", category: "Fantastique", localisation: "10 Rue Oberkampf, Paris", size: rand(1..10), price_per_day: rand(15..100), user: user, description: "Un magnigique dragon à deux têtes")

]

plushers.each_with_index do |plush, i|
  p plush
  plush.save!
end
