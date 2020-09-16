# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Destroying  my data"
User.destroy_all
Game.destroy_all

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

game_1 = Game.create!(
  name: 'Teenage Mutant Ninja Turtles: Shadows of The Past Board Game',
  description: 'Your favorite pizza loving mutant turtles are here in your hands to give you the chance to end the mission the best way possible',
  price: 36,
  category: 'Adventure',
  location: "Raval",
  age: 3,
  game_time: 60,
  number_of_players: '2-5',
  condition: "Excellent",
  user_id: user_1.id
  )
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/61FdvjRuU6L._SX258_BO1,204,203,200_.jpg')
game_1.photo.attach(io: file, filename: 'tmnt.jpg', content_type: 'image/jpg')

game_2 = Game.create!(
  name: 'Star Wars: Rebellion',
  description: 'Strike from your hidden base as the Rebels - or find and destroy it as the Empire!',
  price: 50,
  category: 'Strategy',
  location: "Ciutadella",
  age: 12,
  game_time: 120,
  number_of_players: '2-4',
  condition: "Excellent",
  user_id: user_3.id
  )
file = URI.open('https://cdn.shoplightspeed.com/shops/632266/files/19029874/image.jpg')
game_2.photo.attach(io: file, filename: 'starwars.jpg', content_type: 'image/jpg')


 game_3 = Game.create!(
  name: 'Arkham Horror: The Card Game',
  description: 'Investigate the horrors of Arkham while courting cosmic doom.',
  price: 25,
  category: 'Card',
  location: "Poble Sec",
  age: 15,
  game_time: 60,
  number_of_players: '1-4',
  condition: "Good",
  user_id: user_4.id
  )
 file = URI.open('https://images-na.ssl-images-amazon.com/images/I/81znV70MlVL._AC_SL1476_.jpg')
 game_3.photo.attach(io: file, filename: 'arkhamhorror.jpg', content_type: 'image/jpg')

 game_4 = Game.create!(
  name: 'Monopoly',
  description: 'Fast dealing property trading game',
  price: 5,
  category: 'Classic',
  location: "El Born",
  age: 12,
  game_time: 120,
  number_of_players: '2-8',
  condition: "Playable",
  user_id: user_2.id
  )
 file = URI.open('https://images-na.ssl-images-amazon.com/images/I/51PWFJk7aJL._AC_SY355_.jpg')
 game_4.photo.attach(io: file, filename: 'monopoly.jpg', content_type: 'image/jpg')

game_5 = Game.create!(
  name: 'Catan',
  description: 'Trade resources with other players, build up your colony and settle the island of Catan',
  price: 8,
  category: 'Strategy',
  location: "Gracia",
  age: 10,
  game_time: 120,
  number_of_players: '3-4',
  condition: "Good",
  user_id: user_1.id
  )
 file = URI.open('https://cdn.shopify.com/s/files/1/0012/3866/3275/products/catan-board-game-settlors.jpg')
 game_5.photo.attach(io: file, filename: 'catan.jpg', content_type: 'image/jpg')

 game_6 = Game.create!(
  name: 'Cluedo',
  description: 'Who committed the murder in the mansion? Eliminate the suspects and discover whodunit, with what and where',
  price: 4,
  category: 'Classic',
  location: "Sarria-Sant Gervasi",
  age: 8,
  game_time: 60,
  number_of_players: '2-6',
  condition: 'Good',
  user_id: user_2.id
  )
 file = URI.open('https://cloud10.todocoleccion.online/juegos-mesa/tc/2019/11/10/07/182738672.jpg')
 game_6.photo.attach(io: file, filename: 'cluedo.jpg', content_type: 'image/jpg')

 game_7 = Game.create!(
  name: 'Trivial Pursuit Genius ed.',
  description: 'Prove you are the master of all things trivia, rolling and moving to collect pies.',
  price: 2,
  category: 'Trivia',
  location: 'Born',
  age: 12,
  game_time: 90,
  number_of_players: '2-24',
  condition: 'Excellent',
  user_id: user_4.id
  )
 file = URI.open('https://s3.amazonaws.com/hopshop-image-store-production/71251681/cb10a293340578ce4aab032ff88ceb16.jpg')
 game_7.photo.attach(io: file, filename: 'trivialpursuit.jpg', content_type: 'image/jpg')

 game_8 = Game.create!(
  name: 'Risk',
  description: 'Will you conquer the world in this multi-player push-your-luck wargame?',
  price: 15,
  category: 'Strategy',
  location: 'Raval',
  age: 10,
  game_time: 120,
  number_of_players: '2-6',
  condition: 'Playable',
  user_id: user_3.id
  )
 file = URI.open('https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6371/6371010_sd.jpg')
 game_8.photo.attach(io: file, filename: 'risk.jpg', content_type: 'image/jpg')

 game_9 = Game.create!(
  name: 'Chess',
  description: "Warring kings send subjects to capture the enemy's forces in this classic abstract.",
  price: 1,
  category: 'Classic',
  location: 'Barceloneta',
  age: 6,
  game_time: 60,
  number_of_players: '2',
  condition: 'Playable',
  user_id: user_1.id
  )
 file = URI.open('https://images.chesscomfiles.com/uploads/v1/article/22948.ed35aa15.668x375o.8b9a4e994488@2x.jpeg')
 game_9.photo.attach(io: file, filename: 'chess.jpg', content_type: 'image/jpg')

 game_10 = Game.create!(
  name: 'Scrabble',
  description: 'Carefully place your lettered tiles to make high-scoring words.',
  price: 5,
  category: 'Classic',
  location: 'Eixample',
  age: 10,
  game_time: 90,
  number_of_players: '2-4',
  condition: 'Excellent',
  user_id: user_2.id
  )
 file = URI.open('https://ae01.alicdn.com/kf/HTB1OE3dKVXXXXcmXpXXq6xXFXXXh/Scrabble-juegos-de-mesa-aprendizaje-ingl-s-sword-crucigramas-palabras-juego-solitario-letras-juguete-creativo-para.jpg')
 game_10.photo.attach(io: file, filename: 'scrabble.jpg', content_type: 'image/jpg')



puts 'Finished.'
