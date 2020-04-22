# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'products#index'
  get 'products', to: 'products#index'
  get 'products/:id', to: 'products#show', id: /\d+/, as: 'product' # product_path
  get 'about', to: 'products#about'
  get 'search', to: 'products#search', as: 'search'
  get 'dropdown', to: 'categories#dropdown', as: 'dropdown'
  post 'products/add_to_cart/:id', to: 'products#add_to_cart', as: 'add_to_cart'
  delete 'products/remove_from_cart/:id', to: 'products#remove_from_cart', as: 'remove_from_cart'

  resources 'categories', only: %i[index show]
  # get 'categories', to: 'categories#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
