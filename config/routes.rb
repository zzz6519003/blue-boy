Rails.application.routes.draw do

  resources :groups do
    member do
      post :join
      post :quit

      post :increase_count_down
      post :decrease_count_down
    end
    resources :posts
  end

  root to: 'visitors#index'

  devise_for :users
  resources :users

  namespace :account do
    resources :groups
    resources :posts
  end
end
