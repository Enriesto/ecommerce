# frozen_string_literal: true

Rails.application.routes.draw do
  get 'categories/index'
  get 'categories/show'
  root to: 'products#index'

  get 'products/:id', to: 'products#show', id: /\d+/, as: 'product' # product_path

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
