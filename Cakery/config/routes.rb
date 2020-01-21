Rails.application.routes.draw do
  resources :ingredients
  resources :bakers
  resources :flavors
  resources :cakes
  resources :bakeries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
