Rails.application.routes.draw do
  resources :ingredients
  resources :bakers
  resources :flavors
  resources :cakes
  resources :bakeries

  patch "sessions/reset", to: "sessions#reset_session"

  get "sessions/login", to: "sessions#new", as: "login"
  post "sessions/login", to: "sessions#create"
  delete "sessions", to: "sessions#destroy", as: "eliminate"

  # get "bakeries/:id/dashboard", to: "bakeries#dashboard", as: "dashboard"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
