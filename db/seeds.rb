# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


genres = [
     'K-pop',
     'Blues',
     'Reggae',
     'Classic Rock',
     'Hip Hop',
     'Jazz',
     'Classical',
     'Cajun',
     'Zydeco',
    ]

genres.each do |genre_name|
 Genre.create(name: genre_name)

end
puts 'You DB has been Seeded.'