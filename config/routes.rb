# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'products#index'
  get 'products', to: 'products#index'
  get 'products/:id', to: 'products#show', id: /\d+/, as: 'product' # product_path

  resources 'categories', only: %i[index show]
  # get 'categories', to: 'categories#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
