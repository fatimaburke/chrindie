Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  resources :albums

  root 'home#index'
end
