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
  post '/users/new', to: 'users#create'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/signout', to: 'sessions#destroy'
  post '/jobs/new', to: 'jobs#create'
  post '/jobs/:job_id/contracts/new', to: 'contracts#create'
end
