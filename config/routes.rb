# config/routes.rb
Rails.application.routes.draw do
  resources :locations
  resources :user_locations
  resources :users
  # route to test your configuration
  get '/hello', to: 'application#hello_world'
end
