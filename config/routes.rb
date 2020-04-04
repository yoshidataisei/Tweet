Rails.application.routes.draw do
  resources :puts
  resources :users, only: [:index, :new, :show, :create]
  
  
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  
  root to: "toppages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end