Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"

  resources :diaries
  resources :users, only: [:index, :show]
  resources :plans, except: :destroy
  resources :alarms, only: [:index, :show]
  get 'games', to: 'games#index'
  get 'game/show/:id', to: 'games#show'
  get 'game/start/:id', to: 'games#start'
  get 'games/punish', to: 'games#punish'

end
