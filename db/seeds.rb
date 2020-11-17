# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."

Confinement.destroy_all

puts "Adding Confinement to the DB"


Confinement.create!(name: 'mon petit chat', description: 'bla bla bla', user_id: 1 )
Confinement.create!(name: 'Campagne', description: 'bla bla bla', user_id: 1 )
Confinement.create!(name: 'City', description: 'bla bla bla', user_id: 1 )
