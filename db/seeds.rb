# frozen_string_literal: true

require 'rspotify'
RSpotify.authenticate('b1e0dad39f0f453190203b7755550476', '1bfa8af723bf41eb9da8656336d862de')

Album.destroy_all
Artist.destroy_all

egg = RSpotify::Artist.find('29BYKYRumnLijRWNH0yE4P')
bussy = RSpotify::Artist.find('6gV6jhwlznH50Ulm7QA8bv')
eggalbums = egg.albums
bussyalbums = bussy.albums

artist = Artist.create(
  name: egg.name
)

eggalbums.each do |x|
  artist.albums
        .build(
          name: x.name,
          release_date: x.release_date,
          genre: 'Hip Hop'
        )
        .save
end

second_artist = Artist.create(
  name: bussy.name
)

bussyalbums.each do |x|
  second_artist.albums
               .build(
                 name: x.name,
                 release_date: x.release_date,
                 genre: 'Hip Hop'
               )
               .save
end

puts "Generated #{Artist.count} artist(s)"
puts "Generated #{Album.count} album(s)"
