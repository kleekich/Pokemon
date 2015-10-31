Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers, :pokemons
  resources :trainers, :pokemons
  post "pokemons", to: 'pokemons#capture', as:  'capture'
  put "pokemons", to: 'pokemons#damage', as:  'damage'
  get "/pokemons/new", to: 'pokemons#new', as: 'new'
  post "pokemons", to: 'pokemons#create', as: 'create'

end
