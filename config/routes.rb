Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#home'
  
  resources :jobs do 
    resources :contracts
  end
  resources :users
  resources :clients
  resources :workers do 
    resources :contracts
  end
  
  get '/signup', to: 'users#new'
  get '/signin', to: 'users#signin'
  post '/signin', to: 'users#signedin'
  get '/signout', to: 'users#signout'
  post '/jobs/new', to: 'jobs#create'
end
