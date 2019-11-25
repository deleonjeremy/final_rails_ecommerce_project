# frozen_string_literal: true

class Album < ApplicationRecord
  belongs_to :artist

  validates :name, :release_date, :genre, presence: true
  validates :price, numericality: { only_integer: true }

  has_one_attached :image
end
