# frozen_string_literal: true

ActiveAdmin.register Album do
  permit_params :name, :release_date, :genre, :artist_id, :price, :image, :description,
                album_genres_attributes: %i[id album_id genre_id _destroy]

  index do
    column :name
    column :description
    column :release_date
    column :price
    column :image
    column :genres do |board_game|
      board_game.genres.map(&:name).join(', ').html_safe
    end
    actions
  end
  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    f.inputs do
      f.input :image, as: :file
      f.has_many :album_genres, allow_destroy: true do |n_f|
        n_f.input :genre
      end
    end
    f.actions # adds the 'Submit' and 'Cancel' buttons
  end
end
