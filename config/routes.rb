# frozen_string_literal: true

Rails.application.routes.draw do
  get 'songs/index'
  get 'songs/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get '/artists', to: 'artists#index'
  get '/artists/:id', to: 'artists#show', id: /\d+/

  get '/albums', to: 'albums#index'
  get '/albums/:id', to: 'albums#show', id: /\d+/, as: 'show_album'

  post '/artists/add_to_cart/:id', to: 'artists#add_to_cart', as: 'add_to_cart'
  delete '/artists/remove_from_cart/:id', to: 'artists#remove_from_cart', as: 'remove_from_cart'

  root to: 'artists#index'
end
