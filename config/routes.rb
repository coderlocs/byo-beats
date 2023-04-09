Rails.application.routes.draw do
  root 'public#index'
  devise_for :users
  resources :users, only: [:show]
end
