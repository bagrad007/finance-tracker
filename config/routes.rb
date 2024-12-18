Rails.application.routes.draw do
  
  resources :user_stocks, only: [:create, :destroy]
  resources :friends, only: [:create, :destroy]
  devise_for :users
  
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'friends', to: 'users#my_friends'
  get 'search_stock', to: 'stocks#search'
  get 'search_friend', to: 'users#search_friend'
  get resources :users, only:[:show]

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
