Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"

  resources :diaries
  resources :users, only: [:index, :show]
  resources :plans, except: :destroy
  resources :alarms, only: [:index, :show]

end
