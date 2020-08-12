Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'sessions#home'
get '/signup' => 'users#new' 
post '/signup' => 'users#create' 

get '/login' => 'sessions#new'
post 'login' => 'sessions#create'
get '/auth/facebook/callback' => 'sessions#create'
get '/logout' => 'sessions#destroy' 

resources :users 
resources :users, only: [:show] do 
  resources :rentals, only: [:index]
end 

post '/rentals', to: 'rentals#create'
get '/rentals/:id', to: 'rentals#update'

resources :movies, only: [:index]
resources :movies, only: [:show] do 
  get '/reviews/new', to: 'reviews#new'
  post '/reviews', to: 'reviews#create'
end 



end
