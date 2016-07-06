Rails.application.routes.draw do

  get 'pages/index'
  get 'pages/contact'

  resources :articles

  root 'pages#index'
end
