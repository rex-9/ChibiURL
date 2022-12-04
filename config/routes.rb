Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "urls#public"
  resources :urls, only: [:new, :create]
  get "urls/:chibi_url", to: "urls#show"
end
