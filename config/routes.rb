Rails.application.routes.draw do
  get 'users/show'
  get 'users/profiles'
  devise_for :users
  root 'tweets#index'
  #Tweets routes
  resources :tweets
  resources :users
end
