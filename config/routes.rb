Rails.application.routes.draw do
  get '/about'           => 'pages#about'
  get '/contact'         => 'pages#contact'
  root 'pages#home'
  #Tweets routes
  get '/tweets'          => 'tweets#index'
  post '/tweets'         => 'tweets#create'
  get '/tweets/:id/edit' => 'tweets#edit'
  put '/tweets/:id'      => 'tweets#update'
  delete '/tweets/:id'   => 'tweets#destroy'
  get '/tweets/new'      => 'tweets#new'
  get '/tweets/:id'      => 'tweets#show'
end
