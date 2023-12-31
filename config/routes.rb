Rails.application.routes.draw do
  resources :contents, only: [:new, :create, :index]
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  root 'contents#index'
  resources :users
  # resources :posts, only: [:new, :create, :index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
