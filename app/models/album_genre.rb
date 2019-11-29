# frozen_string_literal: true

class AlbumGenre < ApplicationRecord
  belongs_to :album # There is a album_id FK in the AlbumGenre table
  belongs_to :genre # There is a genre_id FK in the AlbumGenre table
end
