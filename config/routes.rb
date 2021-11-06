Rails.application.routes.draw do

  resources :restaurants, only: [:index, :show, :destroy] do
    resources :reviews, only: [:create]
  end

  # resources :reviews, only: [:destroy]

  root to: 'restaurants#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end