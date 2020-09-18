require "open-uri"

puts "Destroying  my data"
Game.destroy_all
User.destroy_all

puts "Creating new ones"

user_1 = User.create!(
  first_name: "Mauricio",
  last_name: "Pochettino",
  email: "mauricet@gmail.com",
  password: '123456'
  )

user_2 = User.create!(
  first_name: "Michael",
  last_name: "Jordan",
  email: "mj4eva@chicagobulls.com",
  password: '123456'
  )

user_3 = User.create!(
  first_name: "Guillermo",
  last_name: "Del Toro",
  email: "williamofthebull@pelis.com",
  password: '123456'
  )

user_4 = User.create!(
  first_name: "Gabriel",
  last_name: "Batistuta",
  email: "gabbyb@fiorentina.com",
  password: '123456'
  )

puts "4 users created!"

game_1 = Game.new(
  name: 'Teenage Mutant Ninja Turtles: Board Game',
  description: 'Your favorite pizza loving mutant turtles are here in your hands to give you the chance to end the mission the best way possible',
  price: 36,
  category: 'Adventure',
  location: "Raval, Barcelona",
  age: 3,
  game_time: 60,
  number_of_players: '2-5',
  condition: "Excellent",
  user_id: user_1.id
  )
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/61FdvjRuU6L._SX258_BO1,204,203,200_.jpg')
game_1.photo.attach(io: file, filename: 'tmnt.jpg', content_type: 'image/jpg')
game_1.save!

game_2 = Game.new(
  name: 'Star Wars: Rebellion',
  description: 'Strike from your hidden base as the Rebels - or find and destroy it as the Empire!',
  price: 50,
  category: 'Strategy',
  location: "Ciutadella, Barcelona",
  age: 12,
  game_time: 120,
  number_of_players: '2-4',
  condition: "Excellent",
  user_id: user_3.id
  )
file = URI.open('https://cdn.shoplightspeed.com/shops/632266/files/19029874/image.jpg')
game_2.photo.attach(io: file, filename: 'starwars.jpg', content_type: 'image/jpg')
game_2.save!


game_3 = Game.new(
  name: 'Arkham Horror: The Card Game',
  description: 'Investigate the horrors of Arkham while courting cosmic doom.',
  price: 25,
  category: 'Card',
  location: "Poble Sec, Barcelona",
  age: 15,
  game_time: 60,
  number_of_players: '1-4',
  condition: "Good",
  user_id: user_4.id
  )
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/81znV70MlVL._AC_SL1476_.jpg')
game_3.photo.attach(io: file, filename: 'arkhamhorror.jpg', content_type: 'image/jpg')
game_3.save!

game_4 = Game.new(
  name: 'Monopoly',
  description: 'Fast dealing property trading game',
  price: 5,
  category: 'Classic',
  location: "El Born, Barcelona",
  age: 12,
  game_time: 120,
  number_of_players: '2-8',
  condition: "Playable",
  user_id: user_2.id
  )
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/51PWFJk7aJL._AC_SY355_.jpg')
game_4.photo.attach(io: file, filename: 'monopoly.jpg', content_type: 'image/jpg')
game_4.save!


game_5 = Game.new(
  name: 'Catan',
  description: 'Trade resources with other players, build up your colony and settle the island of Catan',
  price: 8,
  category: 'Strategy',
  location: "Gracia, Barcelona",
  age: 10,
  game_time: 120,
  number_of_players: '3-4',
  condition: "Good",
  user_id: user_1.id
  )
file = URI.open('https://cdn.shopify.com/s/files/1/0012/3866/3275/products/catan-board-game-settlors.jpg')
game_5.photo.attach(io: file, filename: 'catan.jpg', content_type: 'image/jpg')
game_5.save!

puts "5 games created!"

game_6 = Game.new(
  name: 'Cluedo',
  description: 'Who committed the murder in the mansion? Eliminate the suspects and discover whodunit, with what and where',
  price: 4,
  category: 'Classic',
  location: "Encants, Barcelona",
  age: 8,
  game_time: 60,
  number_of_players: '2-6',
  condition: 'Good',
  user_id: user_2.id
  )
file = URI.open('https://cloud10.todocoleccion.online/juegos-mesa/tc/2019/11/10/07/182738672.jpg')
game_6.photo.attach(io: file, filename: 'cluedo.jpg', content_type: 'image/jpg')
game_6.save!

game_7 = Game.new(
  name: 'Trivial Pursuit Genius ed.',
  description: 'Prove you are the master of all things trivia, rolling and moving to collect pies.',
  price: 2,
  category: 'Trivia',
  location: 'Born, Barcelona',
  age: 12,
  game_time: 90,
  number_of_players: '2-24',
  condition: 'Excellent',
  user_id: user_4.id
  )
file = URI.open('https://s3.amazonaws.com/hopshop-image-store-production/71251681/cb10a293340578ce4aab032ff88ceb16.jpg')
game_7.photo.attach(io: file, filename: 'trivialpursuit.jpg', content_type: 'image/jpg')
game_7.save!



game_8 = Game.new(
  name: 'Risk',
  description: 'Will you conquer the world in this multi-player push-your-luck wargame?',
  price: 15,
  category: 'Strategy',
  location: 'Raval, Barcelona',
  age: 10,
  game_time: 120,
  number_of_players: '2-6',
  condition: 'Playable',
  user_id: user_3.id
  )
file = URI.open('https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6371/6371010_sd.jpg')
game_8.photo.attach(io: file, filename: 'risk.jpg', content_type: 'image/jpg')
game_8.save!

game_9 = Game.new(
  name: 'Chess',
  description: "Warring kings send subjects to capture the enemy's forces in this classic abstract.",
  price: 1,
  category: 'Classic',
  location: 'Barceloneta, Barcelona',
  age: 6,
  game_time: 60,
  number_of_players: '2',
  condition: 'Playable',
  user_id: user_1.id
  )
file = URI.open('https://images.chesscomfiles.com/uploads/v1/article/22948.ed35aa15.668x375o.8b9a4e994488@2x.jpeg')
game_9.photo.attach(io: file, filename: 'chess.jpg', content_type: 'image/jpg')
game_9.save!

game_10 = Game.new(
  name: 'Scrabble',
  description: 'Carefully place your lettered tiles to make high-scoring words.',
  price: 5,
  category: 'Classic',
  location: 'Eixample, Barcelona',
  age: 10,
  game_time: 90,
  number_of_players: '2-4',
  condition: 'Excellent',
  user_id: user_2.id
  )
file = URI.open('https://ae01.alicdn.com/kf/HTB1OE3dKVXXXXcmXpXXq6xXFXXXh/Scrabble-juegos-de-mesa-aprendizaje-ingl-s-sword-crucigramas-palabras-juego-solitario-letras-juguete-creativo-para.jpg')
game_10.photo.attach(io: file, filename: 'scrabble.jpg', content_type: 'image/jpg')
game_10.save!

puts "10 games created!"

game_11 = Game.new(
  name: 'Uno',
  description: 'The classic card game of matching colours and numbers.',
  price: 2,
  category: 'Card',
  location: 'Gotic, Barcelona',
  age: 3,
  game_time: 30,
  number_of_players: '2-10',
  condition: 'Excellent',
  user_id: user_3.id
  )
file = URI.open('https://cdn.instructables.com/ORIG/FB1/W66K/GN8NCR4P/FB1W66KGN8NCR4P.jpg')
game_11.photo.attach(io: file, filename: 'uno.jpg', content_type: 'image/jpg')
game_11.save!

game_12 = Game.new(
  name: 'Apples to Apples',
  description: 'Apples to Apples creates lots of laughter and party-time joy and makes you think on your feet',
  price: 5,
  category: 'Card',
  location: 'Eixample, Barcelona',
  age: 12,
  game_time: 30,
  number_of_players: '4-10',
  condition: 'Good',
  user_id: user_3.id
  )
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/81JYc79MqTL._AC_SL1500_.jpg')
game_12.photo.attach(io: file, filename: 'apples.jpg', content_type: 'image/jpg')
game_12.save!

game_13 = Game.new(
  name: 'Poker set',
  description: '300 Piece Texas Holdem Poker Chips Set with Aluminum Case ,2 Decks of Cards, Dealer, Small Blind, Big Blind Buttons and 5 Dice',
  price: 25,
  category: 'Betting',
  location: 'Raval, Barcelona',
  age: 18,
  game_time: 120,
  number_of_players: '2-12',
  condition: 'Excellent',
  user_id: user_4.id
  )
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/810gKe9AgrL._AC_SL1500_.jpg')
game_13.photo.attach(io: file, filename: 'poker.jpg', content_type: 'image/jpg')
game_13.save!



game_14 = Game.new(
  name: 'Pictionary',
  description: "Bite your lip, don't say the word, just draw it! Pictionary is the game where your pencil does the talking. You and your team try to guess words by sketching clues to each other.",
  price: 5,
  category: 'Party',
  location: 'Port Olimpic, Barcelona',
  age: 12,
  game_time: 60,
  number_of_players: '4 - 12',
  condition: 'Good',
  user_id: user_1.id
  )
file = URI.open('https://rukminim1.flixcart.com/image/352/352/j9pyaa80/board-game/d/7/s/pictionary-original-the-game-of-quick-draw-board-game-krypton-original-imaezgkycvezb5zx.jpeg')
game_14.photo.attach(io: file, filename: 'pictionary.jpg', content_type: 'image/jpg')
game_14.save!

game_15 = Game.new(
  name: 'Pandemic',
  description: "As skilled members of a disease-fighting team, you and the other players work together and form a strategy to keep the world safe from outbreaks and epidemics. Only through collaborative teamwork will you have a chance to find a cure. Pandemic is a cooperative board game in which players work as a team to treat infections around the world while gathering resources for cures.",
  price: 15,
  category: 'Science-Fiction',
  location: 'Poble Nou, Barcelona',
  age: 8,
  game_time: 60,
  number_of_players: '2-4',
  condition: 'Excellent',
  user_id: user_2.id
  )
file = URI.open('https://media.newyorker.com/photos/5f0392652385d52b037bf56f/16:9/w_1280,c_limit/Jahromi-Pandemictheboardgame.jpg')
game_15.photo.attach(io: file, filename: 'pandemic.jpg', content_type: 'image/jpg')
game_15.save!

puts "15 games created!"

game_16 = Game.new(
  name: 'Exploding kittens',
  description: "Exploding Kittens is a kitty-powered version of Russian Roulette. Players take turns drawing cards until someone draws an exploding kitten and loses the game. The deck is made up of cards that let you avoid exploding by peeking at cards before you draw, forcing your opponent to draw multiple cards, or shuffling the deck.",
  price: 10,
  category: 'Party',
  location: 'Clot, Barcelona',
  age: 7,
  game_time: 15,
  number_of_players: '2-5',
  condition: 'Good',
  user_id: user_3.id
  )
file = URI.open('https://explodingkittens.com/img/home/exploding-kittens-card-samples_x1.png')
game_16.photo.attach(io: file, filename: 'exploding_kittens.png', content_type: 'image/png')
game_16.save!


game_17 = Game.new(
  name: 'Operation',
  description: "It's the classic family favourite with an updated look and funny ailments! Cavity Sam is feeling a bit under the weather, and kids will love to operate and make him better. Your child will grab the tweezers and giggle with delight trying to take out all of Cavity Sam's funny ailments without getting BUZZED",
  price: 7,
  category: 'Children',
  location: 'Sants, Barcelona',
  age: 4,
  game_time: 10,
  number_of_players: '1+',
  condition: 'Playable',
  user_id: user_4.id
  )
file = URI.open('https://i.ytimg.com/vi/3ygu9yRFuQc/maxresdefault.jpg')
game_17.photo.attach(io: file, filename: 'operation.jpg', content_type: 'image/jpg')
game_17.save!

game_18 = Game.new(
  name: 'Connect 4',
  description: "Challenge a friend to disc-dropping fun with the simple game of connect four. Drop your red or yellow discs in the grid and be the first to get four in a row to win.",
  price: 2,
  category: 'Children',
  location: 'Horta, Barcelona',
  age: 6,
  game_time: 10,
  number_of_players: '2',
  condition: 'Playable',
  user_id: user_1.id
  )
file = URI.open('https://hasbrostore.cl/1497-miniatura_image/connect-4.jpg')
game_18.photo.attach(io: file, filename: 'operation.jpg', content_type: 'image/jpg')
game_18.save!

game_19 = Game.new(
  name: 'Twister',
  description: "Add a twist of fun into any party or family night with the game that ties you up in knots.",
  price: 2,
  category: 'Party',
  location: 'Sant Andres, Barcelona',
  age: 6,
  game_time: 20,
  number_of_players: '1-8',
  condition: 'Excellent',
  user_id: user_2.id
  )
file = URI.open('https://www.toysrus.ca/dw/image/v2/BDFX_PRD/on/demandware.static/-/Sites-toys-master-catalog/default/dw33458a0b/images/0B2F55CF_3.jpg')
game_19.photo.attach(io: file, filename: 'twister.jpg', content_type: 'image/jpg')
game_19.save!


game_20 = Game.new(
  name: 'Jenga',
  description: "It is the classic block-stacking, stack-crashing game of Jenga. How will you stack up against the law of gravity. Adults and children alike love Jenga.",
  price: 5,
  category: 'Party',
  location: 'Les Corts, Barcelona',
  age: 6,
  game_time: 20,
  number_of_players: '2+',
  condition: 'Good',
  user_id: user_3.id
  )
file = URI.open('https://nwscdn.com/media/catalog/product/p/r/premium_giant_jenga_set_for_the_garden_1.jpg')
game_20.photo.attach(io: file, filename: 'jenga.jpg', content_type: 'image/jpg')
game_20.save!

puts "20 games created!"

game_21 = Game.new(
  name: 'Best of TV and Movies Board Game',
  description: "Test your trivia knowledge of 100s of TV Shows and Movies. Great game at a party. ",
  price: 15,
  category: 'Movies/TV',
  location: 'Rambla, Barcelona',
  age: 8,
  game_time: 120,
  number_of_players: '2-6',
  condition: 'Good',
  user_id: user_4.id
  )
file = URI.open('https://m.media-amazon.com/images/I/91DRxqpT1sL.jpg')
game_21.photo.attach(io: file, filename: 'movie.jpg', content_type: 'image/jpg')
game_21.save!

game_22 = Game.new(
  name: 'Fantasy Flight Games: Lord of the Rings',
  description: "A fully-cooperative, Science-Fiction app-supported board game set in J.R.R. Tolkien’s iconic Middle-earth for one to five players",
  price: 35,
  category: 'Role',
  location: 'Eixample Dret, Barcelona',
  age: 14,
  game_time: 90,
  number_of_players: '1-5',
  condition: 'Excellent',
  user_id: user_1.id
  )
file = URI.open('https://images-cdn.fantasyflightgames.com/filer_public/fa/11/fa11330f-0661-4f92-940d-50067d8dfa34/jme01_box_left.png')
game_22.photo.attach(io: file, filename: 'lotr.png', content_type: 'image/png')
game_22.save!

game_23 = Game.new(
  name: 'Dungeons and Dragons',
  description: "The original Science-Fiction role playing game. EVERYTHING YOU NEED: Includes an introductory rulebook, an adventure book, 6 blank character sheets, a dungeon master screen, 11 dice, a double sided map, and 81 cards for the magic items and sidekicks featured in this adventure.",
  price: 30,
  category: 'Role',
  location: 'Torre Mapfre, Barcelona',
  age:12,
  game_time: 180,
  number_of_players: '2-6',
  condition: 'Playable',
  user_id: user_2.id
  )
file = URI.open('https://upload.wikimedia.org/wikipedia/commons/8/87/Dungeons_and_Dragons_game.jpg')
game_23.photo.attach(io: file, filename: 'dnd.jpg', content_type: 'image/jpg')
game_23.save!

game_24 = Game.new(
  name: 'Checkers/Draughts/Chess 3in1',
  description: "Handmade in one of the most beautiful natural grain hard woods. Includes pieces for all three classic games. ",
  price: 2,
  category: 'Abstract',
  location: 'Sagrada Familia, Barcelona',
  age: 3,
  game_time: 60,
  number_of_players: '2',
  condition: 'Good',
  user_id: user_3.id
  )
file = URI.open('https://ae01.alicdn.com/kf/H09cdfe6b7e1a460ab27870d741a47956y/3-in-1-Double-Faced-Folding-Wooden-Chess-Checkers-Backgammon-Travel-Board-Game.jpg_q50.jpg')
game_24.photo.attach(io: file, filename: 'checkers.jpg', content_type: 'image/jpg')
game_24.save!



game_25 = Game.new(
  name: 'Paladone: Music Trivia Game with Kazoos',
  description: "C'mon and join this hilarious guessing game that will test everyone's knowledge of catchy iconic tunes as well as their ability to play the kazoo! It's a laugh-out-loud game for the whole family.",
  price: 5,
  category: 'Music',
  location: 'Universitat, Barcelona',
  age: 6,
  game_time: 20,
  number_of_players: '2-6',
  condition: 'Playable',
  user_id: user_4.id
  )
file = URI.open('https://i.ebayimg.com/images/g/vDoAAOSwUvBeoZa6/s-l225.jpg')
game_25.photo.attach(io: file, filename: 'jenga.jpg', content_type: 'image/jpg')
game_25.save!

puts "25 games created!"

game_26 = Game.new(
  name: 'Sagrada Familia Jigsaw Puzzle',
  description: "Jigsaw puzzle 1000 piece:Thrill and challenge your family and friends piecing together this incredible 1000-Piece jigsaw puzzle. Bring home hours of fun and entertainment everyone will enjoy.",
  price: 2,
  category: 'Puzzle',
  location: 'Gracia, Barcelona',
  age: 18,
  game_time: 240,
  number_of_players: '1+',
  condition: 'Excellent',
  user_id: user_1.id
  )
file = URI.open('https://images-eu.ssl-images-amazon.com/images/I/91S2AKNRMuL._AC_SS350_.jpg')
game_26.photo.attach(io: file, filename: 'puzzle.jpg', content_type: 'image/jpg')
game_26.save!

game_27 = Game.new(
  name: 'Cranium',
  description: "The cranium game is outrageous fun and gives players a chance to show off their talents! players team up to cruise around the board completing activities in 4 colour-coded categories: creative cat, data head, Star performer, and word worm.",
  price: 12,
  category: 'Party',
  location: 'Montjuic, Barcelona',
  age: 16,
  game_time: 60,
  number_of_players: '4-12',
  condition: 'Good',
  user_id: user_2.id
  )
file = URI.open('https://s3-eu-west-1.amazonaws.com/images.linnlive.com/43ab36bc2d7157858ef8c9c3eb84428e/2e0481fa-dc65-4244-b870-9aa59947d769.jpg')
game_27.photo.attach(io: file, filename: 'cranium.jpg', content_type: 'image/jpg')
game_27.save!

game_28 = Game.new(
  name: 'Scattergories',
  description: "The Scattergories game is the fast-thinking game of categories and words, roll the die, flip the sand timer and think of answers to each category on the category list. Great party game.",
  price: 5,
  category: 'Trivia',
  location: 'Verneda, Barcelona',
  age: 12,
  game_time: 45,
  number_of_players: '2-6',
  condition: 'Excellent',
  user_id: user_3.id
  )
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/81UD%2BvFaDHL._AC_SY606_.jpg')
game_28.photo.attach(io: file, filename: 'scattergories.jpg', content_type: 'image/jpg')
game_28.save!

game_29 = Game.new(
  name: 'Cards against Humanity',
  description: "Cards Against Humanity is a party game for horrible people. Each round, one player asks a question from a black card, and everyone else answers with their funniest white card.",
  price: 10,
  category: 'Card',
  location: 'La Sagrera, Barcelona',
  age: 18,
  game_time: 30,
  number_of_players: '4-20',
  condition: 'Good',
  user_id: user_4.id
  )
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/71VM4wzIrML._AC_SY606_.jpg')
game_29.photo.attach(io: file, filename: 'cards_against_humanity.jpg', content_type: 'image/jpg')
game_29.save!

puts "One more to go...."

game_30 = Game.new(
  name: 'Balderdash',
  description: "This is the world-famous hilarious bluffing game where you try to con your opponents into believing your made-up answers to a weird and wonderful collection of Words, People, Initials, Films and Laws.",
  price: 5,
  category: 'Card',
  location: 'Guinardo, Barcelona',
  age: 12,
  game_time: 45,
  number_of_players: '2-20',
  condition: 'Good',
  user_id: user_4.id
  )
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/51678WW56PL._AC_.jpg')
game_30.photo.attach(io: file, filename: 'balderdash.jpg', content_type: 'image/jpg')
game_30.save!



puts 'ERROR! ERROR! ABANDON SHIP!!! ARGGGGGGHHH!!!!!!'
puts ""
puts ""
puts 'Only kidding.....'
puts "....."
puts "....we're done!"
