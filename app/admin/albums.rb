# frozen_string_literal: true

ActiveAdmin.register Album do

  permit_params :name, :release_date, :genre, :artist_id, :price

end
