Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :unofficials
  root 'unofficials#index'
end
