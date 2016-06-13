Rails.application.routes.draw do
  get '/about'           => 'pages#about'
  get '/contact'         => 'pages#contact'
  root 'tweets#index'
  #Tweets routes
  resources :tweets
end
