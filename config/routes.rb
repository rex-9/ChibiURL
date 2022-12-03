Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get "/", to: "urls#dashboard"
  resources :urls, only: [:index, :new, :create]
  get "/:short", to: "urls#show"
end
