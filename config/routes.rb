# config/routes.rb
Rails.application.routes.draw do
  resources :locations
  resources :user_locations
  resources :users


    # Custom Route: Login
    post "/login", to: "sessions#create"
    # Custom Route: Staying Logged In
    get "/me", to: "users#show"
    post "/signup", to: "users#create"
    # Custom Route: Logout
    delete '/logout', to: "sessions#destroy"
    get '/authorised_user', to: 'users#show'
end
