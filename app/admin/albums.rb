# frozen_string_literal: true

ActiveAdmin.register Album do
  permit_params :name, :release_date, :genre, :artist_id, :price, :image, :description,
                genres_attributes: %i[id album_id artist_id _destroy]

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    f.inputs do
      f.input :image, as: :file
      #  f.has_many :genres, allow_destroy: true do |n_f|
      #    n_f.input :genre
      #  end
    end
    f.actions # adds the 'Submit' and 'Cancel' buttons
  end
end
