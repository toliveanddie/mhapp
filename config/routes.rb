Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/contact'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users

  root 'welcome#index'
end
