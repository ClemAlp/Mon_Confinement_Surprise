# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Cleaning database..."
Booking.destroy_all
Confinement.destroy_all
User.destroy_all
puts "Adding Confinement to the DB"
user = User.create!(email: 'zachariahrossy@gmail.com', password: 'testing', name: 'Zach')

conf_2 = Confinement.new(name: 'Combo télétravail et école à la maison
', description: 'Vous avez toujours rêvé de travailler en claquette chaussettes ?iser ', user: user, first_criteria:'dfsfs' )

file = URI.open('https://res.cloudinary.com/drzczicvd/image/upload/v1605809523/topmemecoronavirus15_kieqmu.jpg')
conf_2.photo.attach(io: file, filename: 'teletravail_confinement.png', content_type: 'image/png')
conf_2.save!
