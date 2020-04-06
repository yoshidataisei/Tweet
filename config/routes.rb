Rails.application.routes.draw do

  resources :puts do
    resources :problems
  end
  
  resources :users, only: [:index, :new, :show, :create] do
    resources :puts
  end
  
  
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  
  root to: "toppages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end