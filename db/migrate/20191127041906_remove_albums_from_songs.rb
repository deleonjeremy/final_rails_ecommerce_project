# frozen_string_literal: true

class RemoveAlbumsFromSongs < ActiveRecord::Migration[6.0]
  def change
    remove_reference :songs, :album, index: true
  end
end
