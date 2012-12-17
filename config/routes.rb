Rigelstpierre::Application.routes.draw do
  resources :portfolios
  resources :posts
  resources :pages

  root :to => 'home#index'

end
