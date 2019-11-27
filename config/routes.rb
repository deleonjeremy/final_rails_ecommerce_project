# frozen_string_literal: true

Rails.application.routes.draw do
  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
    get 'success', to: 'checkout#success', as: 'checkout_success'
  end

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

  get ':permalink', to: 'pages#permalink'
  get 'static_about', to: 'pages#about', as: 'about'

  root to: 'artists#index'
end
