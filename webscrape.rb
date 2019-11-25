# frozen_string_literal: true

require 'open-uri'

puts open('https://api.spotify.com/v1/artists/0TnOYISbd1XYRBk9myaseg').read
