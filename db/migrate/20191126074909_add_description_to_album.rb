class AddDescriptionToAlbum < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :description, :string
  end
end
