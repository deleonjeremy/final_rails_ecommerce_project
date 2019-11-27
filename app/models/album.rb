# frozen_string_literal: true
class Album < ApplicationRecord
  belongs_to :artist
  has_many :songs

  # many to many: genre
  has_many :genres
  has_many :artists, through: :genres

  validates :name, :release_date, :genre, presence: true
  validates :price, numericality: { only_integer: true }

  has_one_attached :image
end
