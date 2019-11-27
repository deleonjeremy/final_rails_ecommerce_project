class CreateGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :genres do |t|
      t.references :album, null: false, foreign_key: true
      t.references :artist, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
