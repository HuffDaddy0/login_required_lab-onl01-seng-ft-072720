Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "secrets#home", as: "home"
  post "/login", to: "sessions#create", as: "login"
  get "/secret", to: "secrets#show", as: "show"
  get "/new", to: "sessions#new", as: "new_login"
  post "/destroy", to: "sessions#destroy", as: "destroy"
end
