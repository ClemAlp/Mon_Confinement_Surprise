# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Confinement.destroy_all
User.destroy_all

puts "Adding Confinement to the DB"

user = User.create!(email: 'zachariahrossy@gmail.com', password: 'testing', name: 'Zach')
Confinement.create!(name: 'mon petit chat', description: 'bla bla bla', user: user)
Confinement.create!(name: 'Campagne', description: 'Un super confinement à la campagne', user: user)
Confinement.create!(name: 'City', description: 'Un super confinement en ville', user: user)

