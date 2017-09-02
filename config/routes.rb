Rails.application.routes.draw do
  resources :garages
  resources :drivers
  resources :clients
  resources :employees
  resources :routes
  resources :stations
  resources :buses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
