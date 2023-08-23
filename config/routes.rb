# frozen_string_literal: true

Rails.application.routes.draw do

  resources :posts, only: %w[index new create edit]
  devise_for :users
  # get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: 'home#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
