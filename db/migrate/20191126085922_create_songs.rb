class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :release_date
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
