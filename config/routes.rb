Rails.application.routes.draw do
  devise_for :artists,
             :controllers => {
                :registrations => 'registrations'
              }
  devise_for :users
  get 'home/index'

  resources :albums do
    resources :tracks
  end

  resources :playlists do
    resources :tracks
  end

  root 'home#index'
end
