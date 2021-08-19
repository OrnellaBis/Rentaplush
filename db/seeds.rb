Plush.destroy_all
User.destroy_all

user = User.create(first_name: "lambda", last_name: "lamdab", email: "test@gmail.com", password: "coucou")
plushers = [

  plush1 = Plush.new(name: "Fox", category: "Animaux", localisation: "2 Rue Oberkampf, Paris", size: rand(1..10), price_per_day: rand(15..100), user_id: user, description: "Un bébé renard tout mignon et tout soyeux"),
  plush1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  plush2 = Plush.new(name: "Baby Yoda", category: "Films", localisation: "1 Rue Oberkampf, Paris", size: rand(1..10), price_per_day: rand(15..100), user_id: user, description: "Cette peluche est une adorable créature pour vivre des aventures intergalactiques et pleines de calins."),
  plush2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  plush3 = Plush.new(name: "Belby Toucan", category: "Animaux", localisation: "3 Rue Oberkampf, Paris", size: rand(1..10), price_per_day: rand(15..100), user_id: user, description: "Un bébé renard tout mignon et tout soyeux"),
  plush3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  plush4 = Plush.new(name: "Kim", category: "Kawaï", localisation: "4 Rue Oberkampf, Paris", size: rand(1..10), price_per_day: rand(15..100), user_id: user, description: "Kim K."),
  plush4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  plush5 = Plush.new(name: "Smili", category: "Emoji", localisation: "5 Rue Oberkampf, Paris", size: rand(1..10), price_per_day: rand(15..100), user_id: user, description: "Smili vous rendra instantanément le sourire."),
  plush5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  plush6 = Plush.new(name: "Freddy", category: "Monstre", localisation: "6 Rue Oberkampf, Paris", size: rand(1..10), price_per_day: rand(15..100), user_id: user, description: "Si vous aimez freddy pour halloween louer là"),
  plush6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  plush7 = Plush.new(name: "It", category: "Monstre", localisation: "7 Rue Oberkampf, Paris", size: rand(1..10), price_per_day: rand(15..100), user_id: user, description: "Le clown ça et de retour pour halloween"),
  plush7.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  plush8 = Plush.new(name: "Jason", category: "Monstre", localisation: "8 Rue Oberkampf, Paris", size: rand(1..10), price_per_day: rand(15..100), user_id: user, description: "Prenez-garde on ne le remarque pas"),
  plush8.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  plush9 = Plush.new(name: "Mickael mayers", category: "Monstre", localisation: "9 Rue Oberkampf, Paris", size: rand(1..10), price_per_day: rand(15..100), user_id: user, description: "Ideal pour holloween"),
  plush9.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  plush0 = Plush.new(name: "Drago", category: "Fantastique", localisation: "10 Rue Oberkampf, Paris", size: rand(1..10), price_per_day: rand(15..100), user_id: user, description: "Un magnigique dragon à deux têtes")
  plush0.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

]

plushers.each do |plush|
  p plush
  plush.save!
end
