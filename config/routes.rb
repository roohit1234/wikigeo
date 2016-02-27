Rails.application.routes.draw do
  resources :posts		
  devise_for :users, path: ""
  root "posts#index"
  get 'users/myposts'

  #match '/about', 	to: 'pages#about', via: :get
  get 'pages/about'




  resources :users, only: [:show]



end
