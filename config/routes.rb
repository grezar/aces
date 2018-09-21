Rails.application.routes.draw do
  root 'top#index'

  resources :homes
  resources :players
  resources :ring_games
end
