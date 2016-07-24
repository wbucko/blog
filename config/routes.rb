Rails.application.routes.draw do

  get 'pages/index'
  get 'pages/contact'

  resources :messages, only: [:new, :create]
  resources :articles

  root 'pages#index'
end
