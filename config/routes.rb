# frozen_string_literal: true

Rails.application.routes.draw do
  get '/artists', to: 'artists#index'
  get '/artists/:id', to: 'artists#show', id: /\d+/
  root to: 'artists#index'
end
