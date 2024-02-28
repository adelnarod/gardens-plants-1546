Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "gardens#index"
  resources :gardens, only: %i[index show new create] do
    resources :plants, only: %i[new create]
  end

  resources :plants, only: %i[destroy]
end
