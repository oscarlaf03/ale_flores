Rails.application.routes.draw do

  devise_for :users
  get 'sobre', to: 'pages#sobre'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :arranjos
end
