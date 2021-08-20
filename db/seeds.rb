require "open-uri"
Plush.destroy_all
User.destroy_all

user = User.create(first_name: "lambda", last_name: "lamdab", email: "test@gmail.com", password: "coucou")
files = [

  file_0 = URI.open('https://cdn-ssl.s7.disneystore.com/is/image/DisneyShopping/1231047442892'),
  file_1 = URI.open('https://s7d2.scene7.com/is/image/BedBathandBeyond/289802667369188p?$460$&wid=515&hei=515'),
  file_2 = URI.open('https://sc01.alicdn.com/kf/UTB86fe0aL2JXKJkSanrq6y3lVXaO.jpg'),
  file_3 = URI.open('https://img.joomcdn.net/5fddeb0585f585df2573039d448a3e37f360d2fa_original.jpeg'),
  file_4 = URI.open('https://images.unsplash.com/photo-1565945887714-d5139f4eb0ce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80'),
  file_5 = URI.open('https://cdn.shopify.com/s/files/1/0584/3841/products/plush-freddy-krueger-nightmare-on-elm-street-phunny-horror-plush-1_2000x2000.jpg?v=1602083911'),
  file_6 = URI.open('https://images-na.ssl-images-amazon.com/images/I/71nTdhf9HTL._AC_SL1500_.jpg'),
  file_7 = URI.open('https://cdn-ssl.s7.disneystore.com/is/image/DisneyShopping/1232047442758'),
  file_8 = URI.open('https://i5.walmartimages.com/asr/5c89353d-fa61-4c03-b7d2-0ef31cacb529_1.97d58323e7a9d5173b92abdd5ad13ba6.jpeg?odnWidth=1000&odnHeight=1000&odnBg=ffffff'),
  file_9 = URI.open('https://m.media-amazon.com/images/I/41OO0getO8L.jpg'),
  file_10 = URI.open('https://cdn.shopify.com/s/files/1/0484/9559/1580/products/product-image-1420156844_960x.jpg?v=1615738396'),
  file_11 = URI.open('https://cdn.shopify.com/s/files/1/0584/3841/products/plush-it-pennywise-the-dancing-clown-hugme-vibrating-plush-by-kidrobot-2_1000x1000.jpg?v=1579553827'),
  file_12 = URI.open('https://images.dunelm.com/30677948.jpg?$standardplayerdefault$&img404=noimagedefault'),
  file_13 = URI.open('https://images.unsplash.com/photo-1554825203-68321ddde262?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=977&q=80'),
  file_14 = URI.open('https://cdn.alzashop.com/ImgW.ashx?fd=f16&cd=ZA305g'),
  file_15= URI.open('https://cdn.shopify.com/s/files/1/0584/3841/products/none-friday-the-13th-jason-phunny-plush-1_1000x1000.jpg?v=1579552165'),
  file_16= URI.open('https://www.derivefigurine.com/51339-large_default/michael-myers-plush-phunny.jpg')
]


plushers = [
Plush.new(name: "Baby Yoda", category: "Films", localisation: "1 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user: user, description: "Cette peluche est une adorable créature pour vivre des aventures intergalactiques et pleines de calins."),
  Plush.new(name: "Fox", category: "Animaux", localisation: "2 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user: user, description: "Un bébé renard tout mignon et tout soyeux"),
  Plush.new(name: "Belby Toucan", category: "Animaux", localisation: "3 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user: user, description: "Un toucan qui ne fait pas de boucan."),
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
  Plush.new(name: "Michael Myers", category: "Monstre", localisation: "17 rue Oberkampf, Paris", size: rand(15..50), price_per_day: rand(3..15
    ), user: user, description: "Idéal pour Halloween ou pour tous les jours si vous aimez la proximité d'un tueur en série."),
]

plushers.each_with_index do |plush, i|
  plush.photo.attach(io: files[i], filename: '#{plush.name}', content_type: 'image/png')
  p plush
  plush.save!
end
