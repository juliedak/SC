# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

Booking.destroy_all
Clothe.destroy_all
User.destroy_all

claire = User.new(email:"claire@gmail.com", password: "coucou", username: 'Claire', address:'126 Boulevard Auguste Blanqui 75013 Paris' )
claire.save!

puts "User created"

amelie = User.new(email:"amelie@gmail.com", password: "coucou", username: 'Amelie', address: '36 rue de la République')
amelie.save!

puts "User created"

guillaume = User.new(email:"guillaume@gmail.com", password: "coucou", username: 'Guillaume', address: '16, villa Gaudelet 75011 Paris')
guillaume.save!

puts "User created"

file4 = URI.open('https://res.cloudinary.com/dlh4cl5ih/image/upload/v1584550582/on5em8hiygbvdlenfjko.jpg')
jupe = Clothe.new(title:'jupe', description: 'super jupe', occasion: 'pour tous les jours', location: '127 boulebard Auguste Blanqui 75013 Paris', gender: 'F', user: claire)
jupe.photos.attach(io: file4, filename: ' ', content_type: 'image/jpg')
jupe.save!

puts 'Clothe saved'

file1 = URI.open('https://res.cloudinary.com/dlh4cl5ih/image/upload/v1584550656/o8cozn9epve0a3umbjhs.jpg')
file2 = URI.open('https://res.cloudinary.com/dlh4cl5ih/image/upload/v1584550784/d1zmdlutjyuvaog0egay.jpg')
jean = Clothe.new(title:'jean a paillettes', description: 'jean a paillette neuf super qualité pour faire la fiesta all night long sur le theme de saturday night fever bb', occasion: 'pour quand il faut etre classe', location: '127 boulebard Auguste Blanqui 75013 Paris', gender: 'F', user: amelie)
jean.photos.attach([{io: file1, filename: ' ', content_type: 'image/jpg'}, {io: file2, filename: ' ', content_type: 'image/jpg'}])
jean.save!

puts 'Clothe saved'

booking = Booking.create!(user: claire, clothe: jupe, status: 'pending', start_date:Date.new(2019,10,01), end_date: Date.new(2019,10,03))

puts 'Booking saved'
