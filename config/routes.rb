Rails.application.routes.draw do
  resources :users
  resources :reviews
  resources :houses

  get "/loggedin", to: "users#loggedin"

  # get "/me", to: "users#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/create", to: "users#create"
  post "/login", to: "sessions#login"
  delete "/logout", to: "sessions#logout"
end
