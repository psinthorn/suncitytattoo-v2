Rails.application.routes.draw do
  resources :whies
  resources :profiles
  resources :contacts
  resources :blogs
  resources :abouts
  devise_for :users
  root to: "welcomes#index"
  resources :welcomes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
