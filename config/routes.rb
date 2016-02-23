Rails.application.routes.draw do

  devise_for :users
  resources :posts
  root "posts#index"

  #match '/about', 	to: 'pages#about', via: :get
  get 'pages/about'



end
