Rails.application.routes.draw do


  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  post '/signout', to: 'sessions#destroy'
  
  resources :users

  resources :bottles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
