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
', user: user, first_criteria: 1, second_criteria: 5, third_criteria: 5)
file = URI.open('https://res.cloudinary.com/drzczicvd/image/upload/v1605865167/Confinement/10m2_ba3m1w.jpg')
conf_1.photo.attach(io: file, filename: 'chomage_confinement.png', content_type: 'image/png')
conf_1.save!

conf_2 = Confinement.new(name: 'Combo télétravail et école à la maison', description: 'Vous avez la chance de respirer l’air pur de la campagne et de ne faire qu’un avec la nature, vous qui êtes végétarien. Mais cela à un prix. Il vous faudra supporter belle maman et sa spécialité : la langue de boeuf … Ouf vous vous échapper et prétextez une envie irrépressible de rentrer en connexion avec les arbres de la foret d’à coté, vous en profiter pour cueillir des champignons !
', user: user, first_criteria: 4, second_criteria: 3, third_criteria: 5)
file = URI.open('https://res.cloudinary.com/drzczicvd/image/upload/v1605865120/Confinement/teletravail_isdfh6.jpg')
conf_2.photo.attach(io: file, filename: 'teletravail_confinement.png', content_type: 'image/png')
conf_2.save!

conf_3 = Confinement.new(name: 'Chez belle maman en Auvergne', description: 'Vous avez toujours rêvé de travailler en claquette chaussettes ? N’attendez plus et choisissez ce confinement ! En plus de maitriser l’art des conférences zoom tout en changeant les couches de votre petit dernier, vous serez incollable sur les tables de multiplication et le théorème de pythagore.
', user: user, first_criteria: 3, second_criteria: 5, third_criteria: 1)
file = URI.open('https://res.cloudinary.com/drzczicvd/image/upload/v1605865706/Confinement/bellemaman1_p1knpr.jpg')
conf_3.photo.attach(io: file, filename: 'teletravail_confinement.png', content_type: 'image/png')
conf_3.save!

conf_4 = Confinement.new(name: 'Confiné avec son crush tinder', description: 'Qui a dit que le confinement serait un coup dur pour les célibataires ? Vous maitriser le Kamasutra comme jaja et vous ne vous êtes jamais senti aussi bien dans votre corps. En revanche, il vous faudra supporter Corenting et ses réunions Zoom jusqu’à 21h30 sur comment augmenter flexibilisation du marché du travail…
', user: user, first_criteria: 5, second_criteria: 3, third_criteria: 5)
file = URI.open('https://res.cloudinary.com/drzczicvd/image/upload/v1605865107/Confinement/tinder_me65ys.jpg')
conf_4.photo.attach(io: file, filename: 'teletravail_confinement.png', content_type: 'image/png')
conf_4.save!

conf_5 = Confinement.new(name: 'Gamer et confiné              ', description: 'Confinem… quoi ? Covi… comment ?', user: user, first_criteria: 1, second_criteria: 1, third_criteria: 5)
file = URI.open('https://res.cloudinary.com/drzczicvd/image/upload/v1605865131/Confinement/gamer_abgq9o.jpg')
conf_5.photo.attach(io: file, filename: 'teletravail_confinement.png', content_type: 'image/png')
conf_5.save!



# conf_1 = Confinement.new(name: 'Au chômage, confiné dans un 10m2
# ', description: 'Ca pourrait être pire, vous pourriez être sans emploi et confiné dans un placard à balai. Merde …. Saisissez cette opportunité et dites vous que c’est l’occasion de rentrer en introspection avec vous même afin de développer votre petit jardin intérieur, vous n’en ressortirez que grandi !
# ', user: user, first_criteria: 2, second_criteria: 4, third_criteria: 2)
# file = URI.open('https://res.cloudinary.com/drzczicvd/image/upload/v1605865270/Confinement/meme10m2_nyzu1h.png')
# conf_1.photo.attach(io: file, filename: 'chomage_confinement.png', content_type: 'image/png')
# conf_1.save!

# conf_2 = Confinement.new(name: 'Combo télétravail et école à la maison', description: 'Vous avez la chance de respirer l’air pur de la campagne et de ne faire qu’un avec la nature, vous qui êtes végétarien. Mais cela à un prix. Il vous faudra supporter belle maman et sa spécialité : la langue de boeuf … Ouf vous vous échapper et prétextez une envie irrépressible de rentrer en connexion avec les arbres de la foret d’à coté, vous en profiter pour cueillir des champignons !
# ', user: user, first_criteria: 1, second_criteria: 5, third_criteria: 5)
# file = URI.open('https://res.cloudinary.com/drzczicvd/image/upload/v1605865119/Confinement/memeteletravail_iysrod.png')
# conf_2.photo.attach(io: file, filename: 'teletravail_confinement.png', content_type: 'image/png')
# conf_2.save!

# conf_3 = Confinement.new(name: 'Chez belle maman en Auvergne', description: 'Vous avez toujours rêvé de travailler en claquette chaussettes ? N’attendez plus et choisissez ce confinement ! En plus de maitriser l’art des conférences zoom tout en changeant les couches de votre petit dernier, vous serez incollable sur les tables de multiplication et le théorème de pythagore.
# ', user: user, first_criteria: 1, second_criteria: 5, third_criteria: 5)
# file = URI.open('https://res.cloudinary.com/drzczicvd/image/upload/v1605865143/Confinement/memebellemaman_txs86s.png')
# conf_3.photo.attach(io: file, filename: 'teletravail_confinement.png', content_type: 'image/png')
# conf_3.save!


