Rails.application.routes.draw do

  devise_for :users, path: ""
  resources :posts
  root "posts#index"
  get 'users/myposts'

  #match '/about', 	to: 'pages#about', via: :get
  get 'pages/about'




  resources :users, only: [:show]



end
