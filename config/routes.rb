# frozen_string_literal: true

Rails.application.routes.draw do
  get 'albums/index'
  get 'albums/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get '/artists', to: 'artists#index'
  get '/artists/:id', to: 'artists#show', id: /\d+/


  root to: 'artists#index'
end
