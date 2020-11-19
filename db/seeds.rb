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

conf_1 = Confinement.new(name: 'Au chômage, confiné dans un 10m2
', description: 'Ca pourrait être pire, vous pourriez être sans emploi et confiné dans un placard à balai. Merde …. Saisissez cette opportunité et dites vous que c’est l’occasion de rentrer en introspection avec vous même afin de développer votre petit jardin intérieur, vous n’en ressortirez que grandi !
', user: user, first_criteria: 2, second_criteria: 4, third_criteria: 2)
file = URI.open('https://res.cloudinary.com/drzczicvd/image/upload/v1605803409/eq52zrolgdfpbs10r8xe0ef997nm.jpg')
conf_1.photo.attach(io: file, filename: 'chomage_confinement.png', content_type: 'image/png')
conf_1.save!

conf_2 = Confinement.new(name: 'Combo télétravail et école à la maison
', description: 'Vous avez toujours rêvé de travailler en claquette chaussettes ? N’attendez plus et choisissez ce confinement ! En plus de maitriser l’art des conférences zoom tout en changeant les couches de votre petit dernier, vous serez incollable sur les tables de multiplication et le théorème de pythagore.
', user: user, first_criteria: 1, second_criteria: 5, third_criteria: 5)
file = URI.open('https://res.cloudinary.com/drzczicvd/image/upload/v1605809523/topmemecoronavirus15_kieqmu.jpg')
conf_2.photo.attach(io: file, filename: 'teletravail_confinement.png', content_type: 'image/png')
conf_2.save!


