# frozen_string_literal: true

class Album < ApplicationRecord
  belongs_to :artist
  has_many :songs

  # Relationship to Genres
  has_many :album_genres
  has_many :genres, through: :album_genres
  accepts_nested_attributes_for :album_genres, allow_destroy: true

  has_one_attached :image

  validates :name, :release_date, :genre, presence: true
  validates :price, numericality: { only_integer: true }
end
