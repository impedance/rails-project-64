# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: "home#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
