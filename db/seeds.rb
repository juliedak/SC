# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Clothe.destroy_all
User.destroy_all

user1 = User.new(email:"claire@gmail.com", password: "coucou", username: 'Claire', address:'126 Boulevard Auguste Blanqui 75013 Paris' )
user1.save!

puts "User created"

user2 = User.new(email:"amelie@gmail.com", password: "coucou", username: 'Amelie', address: '36 rue de la République')
user2.save!

puts "User created"

user3 = User.new(email:"guillaume@gmail.com", password: "coucou", username: 'Guillaume', address: '16, villa Gaudelet 75011 Paris')
user3.save!

puts "User created"

clothe1 = Clothe.new(title:'jupe', description: 'super jupe', occasion: 'pour tous les jours', location: '127 boulebard Auguste Blanqui 75013 Paris', gender: 'F', user: user1)
clothe1.save!

puts 'Clothe saved'

clothe2 = Clothe.new(title:'robe habillée', description: 'robe classe pour mariage ou ceremonie en tout genre', occasion: 'pour quand il faut etre classe', location: '127 boulebard Auguste Blanqui 75013 Paris', gender: 'F', user: user2)
clothe2.save!

puts 'Clothe saved'
