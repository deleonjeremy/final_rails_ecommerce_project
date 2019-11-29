# frozen_string_literal: true

class TurnGenreIntoIndependentTable < ActiveRecord::Migration[6.0]
  def change
    remove_reference :genres, :album, index: true
    remove_reference :genres, :artist, index: true
  end
end
