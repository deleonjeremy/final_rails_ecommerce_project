# frozen_string_literal: true

require 'rspotify'
RSpotify.authenticate('b1e0dad39f0f453190203b7755550476', '1bfa8af723bf41eb9da8656336d862de')
require 'open-uri'
require 'json'

artist = RSpotify::Artist.find('2YZyLoL8N0Wb9xBt1NhZWg')
jcole = RSpotify::Artist.find('6l3HvQ5sa6mXTsMTB19rO5')
kdotalbums = artist.albums
colealbums = jcole.albums

kdotalbums.each do |a|
  each_track = a.tracks
  each_track.each do |t|
    puts t.name
  end
end
