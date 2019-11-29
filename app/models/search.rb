# frozen_string_literal: true

class Search < ApplicationRecord
  def search_albums
    albums = Album.all
    albums = albums.where(['name LIKE?', "%#{keywords}%"]) if keywords.present?
    albums.each do |x|
      albums = x.genres.first.where(['id LIKE?', genre]) if genre.present?
    end
    albums
  end
end
