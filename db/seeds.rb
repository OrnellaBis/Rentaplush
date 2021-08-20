Plush.destroy_all
User.destroy_all

user = User.create(first_name: "lambda", last_name: "lamdab", email: "test@gmail.com", password: "coucou")
plushers = [

  Plush.new(name: "Baby Yoda", category: "Films", localisation: "1 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user_id: 1, description: "Cette peluche est une adorable créature pour vivre des aventures intergalactiques et pleines de calins."),
  Plush.new(name: "Fox", category: "Animaux", localisation: "2 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user_id: 1, description: "Un bébé renard tout mignon et tout soyeux"),
  Plush.new(name: "Belby Toucan", category: "Animaux", localisation: "3 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user_id: 1, description: "Un bébé renard tout mignon et tout soyeux"),
  Plush.new(name: "Kim", category: "Kawaï", localisation: "4 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user_id: 1, description: "Kim Kardawaï."),
  Plush.new(name: "Smili", category: "Emoji", localisation: "5 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user_id: 1, description: "Smili vous rendra instantanément le sourire."),
  Plush.new(name: "Freddy", category: "Monstre", localisation: "6 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user_id: 1, description: "Si vous aimez Freddy pour halloween louez-là !"),
  Plush.new(name: "Benoit", category: "Animaux", localisation: "7 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user_id: 1, description: "Un paresseux qui ne l'est pas quand il s'agit des calins."),
  Plush.new(name: "Stitch", category: "Films", localisation: "8 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user_id: 1, description: "Cette adorable peluche toute douce est Stitch, le petit monstre bleu que l’on adore. Une peluche trop mignonne que l’on a envie de câliner immédiatement."),
  Plush.new(name: "Cacamoji", category: "Emoji", localisation: "9 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user_id: 1, description: "Un emoji classique qui ravira petits et grands! "),
  Plush.new(name: "Drago", category: "Fantastique", localisation: "10 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user_id: 1, description: "Un magnifique dragon à deux têtes, qui pourra donc vous attaquer deux fois plus."),
  Plush.new(name: "Kiti", category: "Kawaï", localisation: "11 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user_id: 1, description: "Kiti sera votre compagnon Kawaï tout mignon."),
  Plush.new(name: "It", category: "Monstre", localisation: "12 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user_id: 1, description: "Le clown ça est de retour pour Halloween.....Rangez vos enfants..."),
  Plush.new(name: "Gigi", category: "Animaux", localisation: "13 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user_id: 1, description: "Gigi est une girafe adorable et toute douce."),
  Plush.new(name: "Kawaivocat", category: "Kawaï", localisation: "14 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user_id: 1, description: "Que vous l'aimiez ou non dans votre assiette, cet avocat en peluche fera l'unanimité!"),
  Plush.new(name: "Pikachu", category: "Films", localisation: "15 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user_id: 1, description: "Il n'est plus à présenter, dépéchez-vous de l'attraper!"),
  Plush.new(name: "Jason", category: "Monstre", localisation: "16 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user_id: 1, description: "Prenez-garde on ne le remarque pas..."),
  Plush.new(name: "Mickael mayers", category: "Monstre", localisation: "17 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user_id: 1, description: "Idéal pour Halloween ou pour tous les jours si vous aimez la proximité d'un tueur en série."),
]

plushers.each do |plush|
  p plush
  plush.save!
end
