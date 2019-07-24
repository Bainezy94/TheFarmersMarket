Rails.application.routes.draw do
  devise_for :users
  resources :orders
  resources :reviews
  resources :products
  resources :farmers_profiles
  resources :markets
  resources :profiles
  get 'home/page'

  root to: 'home#page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
