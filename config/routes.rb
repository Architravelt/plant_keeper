Rails.application.routes.draw do
  get 'users/index'
  get 'pages/home'
  get 'pages/about'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  resources :plants, only: [ :index, :show, :new, :create, :destroy ]
end
