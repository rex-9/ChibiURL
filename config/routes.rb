Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "urls#index"
  resources :urls, only: [:new, :create]
  get "urls/:custom_url", to: "urls#show"
end
