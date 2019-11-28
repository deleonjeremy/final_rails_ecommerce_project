# frozen_string_literal: true

class Artist < ApplicationRecord
  has_many :albums
  has_many :songs

  # many to many: genre
  has_many :genres
  # has_many :albums, through: :genres

  validates :name, presence: true
end
