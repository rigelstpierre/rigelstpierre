Rigelstpierre::Application.routes.draw do

  get "sessions/new"

  resources :portfolios
  resources :posts
  resources :pages
  resources :sessions

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root :to => 'home#index'

end
