Rails.application.routes.draw do

  resources :groups do
    resources :posts
  end

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
