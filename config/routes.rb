Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#home'
  
  resources :clients
  resources :users
  get '/signup', to: 'users#new'
  get '/signin', to: 'users#signin'
end
