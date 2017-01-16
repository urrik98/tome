Rails.application.routes.draw do
  resources :records do
    resources :tags
  end

  resources :topics do
    resources :tags
  end

  root 'records#index'
end
