Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  get '/about'           => 'pages#about'
  get '/contact'         => 'pages#contact'
  root 'tweets#index'
  #Tweets routes
  resources :tweets
  resources :users
end
