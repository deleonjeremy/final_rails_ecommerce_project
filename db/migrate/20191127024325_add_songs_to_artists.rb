# frozen_string_literal: true

class AddSongsToArtists < ActiveRecord::Migration[6.0]
  def change
    add_reference :songs, :artists, foreign_key: true
  end
end
