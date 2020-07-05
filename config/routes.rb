Rails.application.routes.draw do
  root to: 'events#index'
  resources :users do
  end
  resources :posts, only: [:new, :create, :show, :index]
  resources :sessions, only: [:destroy]
  resources :sessions, :path => "login" , only: [:new, :create]
  resources :events, only: [:new, :create, :show, :index]
  
end
