class RemoveDescriptionString < ActiveRecord::Migration[6.0]
  def change
    remove_column :albums, :description_string
  end
end
