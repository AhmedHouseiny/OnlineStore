Rails.application.routes.draw do
  resources :shops , only:[:index, :show]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :order_items
  resources :sessions
  resource :carts, only:[:show]
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'shops#index'
end
