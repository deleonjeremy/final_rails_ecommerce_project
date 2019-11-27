# frozen_string_literal: true

class Song < ApplicationRecord
  belongs_to :artist

  validates :name, :release_date, presence: true

  has_many :artists
end
