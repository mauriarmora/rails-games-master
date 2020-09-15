# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
  name: 'IDW Games Teenage Mutant Ninja Turtles: Shadows of The Past Board Game',
  description: 'Your favorite pizza loving mutant turtles are here in your hands to give you the chance to end the mission the best way possible',
  price: 36,
  category: 'Adventure',
  user_id: user_1.id
  )

game_2 = Game.create!(
  name: 'Star Wars: Rebellion',
  description: 'Strike from your hidden base as the Rebels - or find and destroy it as the Empire!',
  price: 50,
  category: 'Strategy',
  user_id: user_3.id
  )

 game_3 = Game.create!(
  name: 'Arkham Horror: The Card Game',
  description: 'Investigate the horrors of Arkham while courting cosmic doom.',
  price: 25,
  category: 'Card',
  user_id: user_4.id
  )

 game_4 = Game.create!(
  name: 'Monopoly',
  description: 'Fast dealing property trading game',
  price: 5,
  category: 'Strategy',
  user_id: user_2.id
  )
game_5 = Game.create!(
  name: 'Catan',
  description: 'Trade resources with other players, build up your colony and settle the island of Catan',
  price: 8,
  category: 'Strategy',
  user_id: user_4.id
  )

puts 'Finished.'
