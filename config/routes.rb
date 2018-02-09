Rails.application.routes.draw do

  devise_for :users
  root 'welcome#home'

  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  post '/signout', to: 'sessions#destroy'


  resources :bottles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
