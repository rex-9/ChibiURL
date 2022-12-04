Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "urls#public"
  resources :users do
    resources :urls, only: [:index]
  end
  resources :urls, only: [:new, :create, :destroy]
  get "urls/:chibi_url", to: "urls#show"
end
