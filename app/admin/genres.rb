# frozen_string_literal: true

ActiveAdmin.register Genre do
  permit_params :name

  index do
    column :id
    column :name
    column :albums do |board_game|
      board_game.albums.map(&:name).join(', ').html_safe
    end
    actions
  end
end
