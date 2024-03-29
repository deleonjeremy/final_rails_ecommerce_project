# frozen_string_literal: true

Rails.application.routes.draw do
  get 'genres/index'
  get 'genres/show'
  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
    get 'success', to: 'checkout#success', as: 'checkout_success'
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get '/artists', to: 'artists#index'
  get '/artists/:id', to: 'artists#show', id: /\d+/, as: 'show_artist'

  get '/albums', to: 'albums#index'
  get '/albums/search', to: 'albums#allproducts', as: 'search_album'
  get '/albums/:id', to: 'albums#show', id: /\d+/, as: 'show_album'

  post '/albums/add_to_cart/:id', to: 'albums#add_to_cart', as: 'add_to_cart'
  delete '/albums/remove_from_cart/:id', to: 'albums#remove_from_cart', as: 'remove_from_cart'

  get '/songs', to: 'songs#index'
  get '/songs/:id', to: 'songs#show', id: /\d+/, as: 'show_song'

  get '/genres', to: 'genres#index'
  get '/genres/:id', to: 'genres#show', id: /\d+/, as: 'show_genre'

  resources :searches

  get ':permalink', to: 'pages#permalink'
  get 'static_about', to: 'pages#about', as: 'about'

  root to: 'albums#allproducts'
end
