Rails.application.routes.draw do
  devise_for :users

  root 'questions#index'

  resources :users do
    resources :answers, only: [:index]
    resources :hitokoto
  end

  resources :ranking, only: [:index]

  resources :questions do
    resources :answers, only: [:create] do
      resources :likes, only: [:create, :destroy]
    end
  end
  resources :categorys, only: [:show]
end
