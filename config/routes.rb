Rails.application.routes.draw do
  root to: 'events#index'
  resources :users do
  	resources :events, only: [:new, :create, :show, :index] do
    resources :attended_events, only: [:new, :create, :show]
  	end
  end
  resources :posts, only: [:new, :create, :show, :index]
  resources :sessions, only: [:destroy]
  resources :sessions, :path => "login" , only: [:new, :create]
  
  
  
end
