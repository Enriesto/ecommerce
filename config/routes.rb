# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'products#index'

  get 'products/:id', to: 'products#show', id: /\d+/

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
