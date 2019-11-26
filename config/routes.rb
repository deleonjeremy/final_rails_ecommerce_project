# frozen_string_literal: true

Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get '/artists', to: 'artists#index'
  get '/artists/:id', to: 'artists#show', id: /\d+/

  get '/albums', to: 'albums#index'
  get '/albums/:id', to: 'albums#show', id: /\d+/, as: 'show_album'

  post '/artists/add_to_cart/:id', to: 'artists#add_to_cart', as: 'add_to_cart'
  delete '/artists/remove_from_cart/:id', to: 'artists#remove_from_cart', as: 'remove_from_cart'

  get '/songs', to: 'songs#index'
  get '/songs/:id', to: 'songs#show', id: /\d+/

  root to: 'artists#index'
end
