Rails.application.routes.draw do
  resources :contacts
  resources :companies
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#welcome"
end
