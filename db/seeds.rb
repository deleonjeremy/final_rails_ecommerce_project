# frozen_string_literal: true

# Spotify Authentication
require 'rspotify'
RSpotify.authenticate('b1e0dad39f0f453190203b7755550476', '1bfa8af723bf41eb9da8656336d862de')

# Destroy all tables for reseeding
Song.destroy_all
Genre.destroy_all
Album.destroy_all
Artist.destroy_all
AdminUser.destroy_all

# Get specific artists
egg = RSpotify::Artist.find('29BYKYRumnLijRWNH0yE4P')
bussy = RSpotify::Artist.find('6gV6jhwlznH50Ulm7QA8bv')

# Get array of albums from specific artists
eggalbums = egg.albums
bussyalbums = bussy.albums

# Initialize first artist
artist = Artist.create(
  name: egg.name
)

# Loop through all albums, and build an insertion for each one.
eggalbums.each do |x|
  artist.albums
        .build(
          name: x.name,
          release_date: x.release_date,
          genre: 'Hip Hop',
          price: rand(5..500).to_i
        )
        .save

  x.tracks.each do |t|
    artist.songs
          .build(
            name: t.name,
            release_date: x.release_date
          )
          .save
  end
end

# Initialize second artist
second_artist = Artist.create(
  name: bussy.name
)

bussyalbums.each do |x|
  second_artist.albums
               .build(
                 name: x.name,
                 release_date: x.release_date,
                 genre: 'Hip Hop',
                 price: rand(5..500).to_i
               )
               .save
  x.tracks.each do |t|
    second_artist.songs
                 .build(
                   name: t.name,
                   release_date: x.release_date
                 )
                 .save
  end

  Genre.create(
    album_id: x.id,
    artist_id: second_artist.id,
    name: 'Rap'
  )
end

random_album = Album.order('random()').first.id
random_artist = Artist.order('random()').first.id

hiphop = Genre.create(album_id: random_album, artist_id: random_artist, name: 'Hip Hop')
3.times do
  album = Album.order('random()').first.id
  artist = Artist.order('random()').first.id
  random_genre = Faker::Music.genre
  Genre.create(album_id: album, artist_id: artist, name: random_genre)
end

puts "Generated #{Artist.count} artist(s)"
puts "Generated #{Album.count} album(s)"
puts "Generated #{Song.count} song(s)"
puts "Generated #{Genre.count} genre(s)"
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
