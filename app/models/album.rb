# frozen_string_literal: true

class Album < ApplicationRecord
  belongs_to :artist

  validates :name, :release_date, :genre, presence: true
end
