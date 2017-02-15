Rails.application.routes.draw do
  devise_for :users

  scope "/admin" do
    resources :users
  end
  resources :roles
  get 'navpage/main'

  resources :records do
    resources :tags
  end

  resources :topics do
    resources :tags
  end

  resources :monographs

  authenticated :user do
    root :to => 'records#index', as: :authenticated_root
  end

  root 'navpage#main'
end
