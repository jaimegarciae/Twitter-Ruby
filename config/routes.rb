Rails.application.routes.draw do
  get '/about'           => 'pages#about'
  get '/contact'         => 'pages#contact'
  root 'pages#home'
  #Tweets routes
  resources :tweets
end
