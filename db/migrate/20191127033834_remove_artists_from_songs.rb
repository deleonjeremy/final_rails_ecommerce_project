# frozen_string_literal: true

class RemoveArtistsFromSongs < ActiveRecord::Migration[6.0]
  def change
    remove_reference :songs, :artists, index: true
  end
end
