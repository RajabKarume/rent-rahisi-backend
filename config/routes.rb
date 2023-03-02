Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :tenants, only: [:show, :delete, :create, :index, :update], defaults: { format: :json }
  resources :landlords, only: [:show, :delete, :create, :index, :update], defaults: { format: :json }
  resources :apartments, only: [:show, :delete, :create, :index, :update], defaults: { format: :json }
end
