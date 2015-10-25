Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  post "pokemons", to: 'pokemons#capture', as: :capture
  post "pokemons", to: 'pokemons#damage', as: :damage

end
