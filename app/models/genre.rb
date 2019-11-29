# frozen_string_literal: true

class Genre < ApplicationRecord
  has_many :album_genres
  has_many :albums, through: :album_genres
  accepts_nested_attributes_for :album_genres, allow_destroy: true

  validates :name, presence: true
end
