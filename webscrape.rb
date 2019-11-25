# frozen_string_literal: true

require 'rspotify'
RSpotify.authenticate('b1e0dad39f0f453190203b7755550476', '1bfa8af723bf41eb9da8656336d862de')
require 'open-uri'
require 'json'

artist = RSpotify::Artist.find('7Ln80lUS6He07XvHI8qqHH')

first_album_tracks = artist.albums.first.tracks

first_album.each do |x|
  puts x.name
end
