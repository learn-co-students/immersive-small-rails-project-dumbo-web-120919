Rails.application.routes.draw do
  resources :ingredients
  resources :bakers
  resources :flavors
  resources :cakes
  resources :bakeries

  get "sessions/login", to: "sessions#new", as: "login"
  post "sessions/login", to: "sessions#create"
  delete "sessions", to: "sessions#destroy", as: "eliminate"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
