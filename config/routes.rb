Rails.application.routes.draw do
  resources :users
  root to: 'user#index'
  resources :posts, only: [:new, :create, :show, :index]
  resources :sessions, only: [:destroy]
  resources :sessions, :path => "login" , only: [:new, :create]
end
