namespace :db do
 desc "Clear the DB and fill with excellent sample data."
 task populate: :environment do
  require 'faker'

  # Clear DB
   [Song, Artist, Genre].each do |model|
    model.delete_all
   end

# Delete Genre from "clear DB"\
# add: genres = Genre.all

  # Add Artists, Genres, and Songs
  5.times do
   # add: genres.each do |genre|
   # delete: 1 line below
   genre = Genre.create(name: Faker::StarTrek.location)

   5..10.times do
    artist = Artist.create(name: Faker::StarTrek.character,
                           genre_id: genre.id)

    rand(1..20).times do
     song = Song.create(name: Faker::VentureBros.quote,
                        artist_id: artist.id)
    end
   end
  end

  puts "You have been assimilated."

 end
end