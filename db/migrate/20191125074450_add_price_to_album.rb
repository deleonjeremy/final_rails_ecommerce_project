class AddPriceToAlbum < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :price, :integer
  end
end
