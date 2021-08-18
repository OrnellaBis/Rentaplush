Plush.destroy_all
User.destroy_all

user = User.create(first_name: "lambda", last_name: "lamdab", email: "test@gmail.com", password: "coucou")
plushers = [

  Plush.new(name: "Baby Yoda", category: "Films", localisation: "Paris 15ème", size: rand(1..10), price_per_day: rand(15..100), user_id: 1, description: "Cette peluche est une adorable créature pour vivre des aventures intergalactiques et pleines de calins."),
  Plush.new(name: "Fox", category: "Animaux", localisation: "Bordeaux", size: rand(1..10), price_per_day: rand(15..100), user_id: 1, description: "Un bébé renard tout mignon et tout soyeux"),
  Plush.new(name: "Belby Toucan", category: "Animaux", localisation: "Limoges", size: rand(1..10), price_per_day: rand(15..100), user_id: 1, description: "Un bébé renard tout mignon et tout soyeux"),
  Plush.new(name: "Kim", category: "Kawaï", localisation: "Lyon", size: rand(1..10), price_per_day: rand(15..100), user_id: 1, description: "Kim K."),
  Plush.new(name: "Smili", category: "Emoji", localisation: "Hossegor", size: rand(1..10), price_per_day: rand(15..100), user_id: 1, description: "Smili vous rendra instantanément le sourire."),
  Plush.new(name: "Freddy", category: "Monstre", localisation: "Toulouse", size: rand(1..10), price_per_day: rand(15..100), user_id: 1, description: "Si vous aimez freddy pour halloween louer là"),
  Plush.new(name: "It", category: "Monstre", localisation: "Marseille", size: rand(1..10), price_per_day: rand(15..100), user_id: 1, description: "Le clown ça et de retour pour halloween"),
  Plush.new(name: "Jason", category: "Monstre", localisation: "Evian", size: rand(1..10), price_per_day: rand(15..100), user_id: 1, description: "Prenez-garde on ne le remarque pas"),
  Plush.new(name: "Mickael mayers", category: "Monstre", localisation: "Annecy", size: rand(1..10), price_per_day: rand(15..100), user_id: 1, description: "Ideal pour holloween"),
  Plush.new(name: "Drago", category: "Fantastique", localisation: "Nice", size: rand(1..10), price_per_day: rand(15..100), user_id: 1, description: "Un magnigique dragon à deux têtes")

]

plushers.each do |plush|
  p plush
  plush.save!
end
