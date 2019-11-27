class Genre < ApplicationRecord
  belongs_to :album # There is a album_id FK in the Genre table
  belongs_to :artist # There is a artist_id FK in the Genre table
end
