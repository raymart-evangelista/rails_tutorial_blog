Rails.application.routes.draw do
  root "articles#index"

  get "about", to: "about#index"
  resources :articles do
    resources :comments
  end
end
