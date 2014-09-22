Rails.application.routes.draw do

  resources :groups do
    member do
      post :join
      post :quit
    end
    resources :posts
  end

  root to: 'visitors#index'
  devise_for :users
  resources :users

  namespace :account do
    resources :groups
  end
end
