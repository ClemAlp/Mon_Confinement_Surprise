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
conf_1 = Confinement.create!(name: 'Campagne', description: 'Un super confinement à la campagne', user: user)
conf_2 = Confinement.create!(name: 'City', description: 'Un super confinement en ville', user: user)

user_1 = User.create!(email: 'zachariahross@gmail.com', password: 'testing', name: 'Zach')
conf_3 = Confinement.create!(name: 'mon petit chat', description: 'bla bla bla', user: user_1 )


file = URI.open('https://static.hitek.fr/img/up_m/1830308727/topmemecoronavirus4.jpg')
conf_1.photo.attach(io: file, filename: 'gamer_confinement.png', content_type: 'image/png')


