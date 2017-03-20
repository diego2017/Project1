Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "places#index"
  get "/places", to: "places#show"

  resources :places
  resources :features
  resources :reviews
  resources :users, only: [:create]

  delete "/features/:feature_id/places/:place_id", to: "features#destroy", as: "delete_feature"

  get "signup", to: "users#new", as: "signup"

  get "signin", to: "sessions#new", as: "signin"
  post "signin", to: "sessions#create"
  delete "signout", to: "sessions#destroy", as: "signout"

end
