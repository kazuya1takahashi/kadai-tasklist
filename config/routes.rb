Rails.application.routes.draw do
  
  get 'toppages/index'

  root to: 'toppages#index'
  
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root to:'tasks#index'
  
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  
  resources :tasks
  
  resources :users, only: [:index, :show, :new, :create]
  
end

