require "open-uri"
Plush.destroy_all
User.destroy_all

user = User.create(first_name: "lambda", last_name: "lamdab", email: "test@gmail.com", password: "coucou")
files = [

  file_0 = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png'),
  file_1 = URI.open('https://www.unecuillerepourdoudou.com/blog/wp/wp-content/uploads/2018/12/Ambiance-ours-marron.jpg'),
  file_2 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwfRAkAdr6V_fm2mXzWudbPeNDpBRn4m6tuw&usqp=CAU'),
  file_3 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvj-gCkFgUvmDcJuahwtOcTOGeeVXu9FZp9w&usqp=CAU'),
  file_4 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLvwOjuz3zwVObmVv4HOMv28JPtvVwd8wW1Q&usqp=CAU'),
  file_5 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEvj7TwEbbQuYUeu2cPD9lwKZQX5f62z47bQ&usqp=CAU'),
  file_6 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4KMczOpzRgUI6fByMtPu3TY4d9m3lR0lIgw&usqp=CAU'),
  file_7 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2IFWEtoOK2YnrnA3s492HUWEbfuryPypy7A&usqp=CAU'),
  file_8 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr39a-cQVXKWMhK-L0Zx0cMU42y_koaWuhHQ&usqp=CAU'),
  file_9 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwxteh2oOjI72e5L4gPKtLDUll4PtNTp44WA&usqp=CAU'),
  file_10 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSg5uAGHsMvGxSGl1MrZjFcciN4R1OcqqXRAw&usqp=CAU'),
  file_11 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWVYGoBt75mXxntJQmC9sk2VwO-Q4fuaInzA&usqp=CAU'),
  file_12 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5rcK9tYM02uDJ_WC2NddADrFWNiMAifdVA&usqp=CAU'),
  file_13 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDBPlh_dtk7cJbhiWADLN9InnWU7EKh5MD3w&usqp=CAU'),
  file_14 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYEaGt_JZgwpI9Sl63YVBTJwbVrNeVtPEOGg&usqp=CAU'),
  file_15= URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSng8R1NNSpjJiENAmfFRXU7OxH2Copqzt4Tg&usqp=CAU'),
  file_16= URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJCm4GHkS0rCn1y0Y-3Sf7ri_OzeJgfh8uOQ&usqp=CAU')
]


plushers = [
Plush.new(name: "Baby Yoda", category: "Films", localisation: "1 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user: user, description: "Cette peluche est une adorable créature pour vivre des aventures intergalactiques et pleines de calins."),
  Plush.new(name: "Fox", category: "Animaux", localisation: "2 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user: user, description: "Un bébé renard tout mignon et tout soyeux"),
  Plush.new(name: "Belby Toucan", category: "Animaux", localisation: "3 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user: user, description: "Un bébé renard tout mignon et tout soyeux"),
  Plush.new(name: "Kim", category: "Kawaï", localisation: "4 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user: user, description: "Kim Kardawaï."),
  Plush.new(name: "Smili", category: "Emoji", localisation: "5 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user: user, description: "Smili vous rendra instantanément le sourire."),
  Plush.new(name: "Freddy", category: "Monstre", localisation: "6 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user: user, description: "Si vous aimez Freddy pour halloween louez-là !"),
  Plush.new(name: "Benoit", category: "Animaux", localisation: "7 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user: user, description: "Un paresseux qui ne l'est pas quand il s'agit des calins."),
  Plush.new(name: "Stitch", category: "Films", localisation: "8 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user: user, description: "Cette adorable peluche toute douce est Stitch, le petit monstre bleu que l'on adore. Une peluche trop mignonne que l'on a envie de câliner immédiatement."),
  Plush.new(name: "Cacamoji", category: "Emoji", localisation: "9 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user: user, description: "Un emoji classique qui ravira petits et grands! "),
  Plush.new(name: "Drago", category: "Fantastique", localisation: "10 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user: user, description: "Un magnifique dragon à deux têtes, qui pourra donc vous attaquer deux fois plus."),
  Plush.new(name: "Kiti", category: "Kawaï", localisation: "11 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user: user, description: "Kiti sera votre compagnon Kawaï tout mignon."),
  Plush.new(name: "It", category: "Monstre", localisation: "12 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user: user, description: "Le clown ça est de retour pour Halloween.....Rangez vos enfants..."),
  Plush.new(name: "Gigi", category: "Animaux", localisation: "13 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user: user, description: "Gigi est une girafe adorable et toute douce."),
  Plush.new(name: "Kawaivocat", category: "Kawaï", localisation: "14 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user: user, description: "Que vous l'aimiez ou non dans votre assiette, cet avocat en peluche fera l'unanimité!"),
  Plush.new(name: "Pikachu", category: "Films", localisation: "15 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user: user, description: "Il n'est plus à présenter, dépéchez-vous de l'attraper!"),
  Plush.new(name: "Jason", category: "Monstre", localisation: "16 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user: user, description: "Prenez-garde on ne le remarque pas..."),
  Plush.new(name: "Mickael mayers", category: "Monstre", localisation: "17 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user: user, description: "Idéal pour Halloween ou pour tous les jours si vous aimez la proximité d'un tueur en série."),
]

plushers.each_with_index do |plush, i|
  plush.photo.attach(io: files[i], filename: '#{plush.name}', content_type: 'image/png')
  p plush
  plush.save!
end
