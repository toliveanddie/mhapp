Rails.application.routes.draw do

  root 'welcome#index'
  get '/help', to: 'welcome#help'
  get '/about', to: 'welcome#about'
  get '/contact', to: 'welcome#contact'
  get    '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]

end
