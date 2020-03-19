Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :posts, only: [ :new, :create, :destroy , :index, :show]
  resources :categories, only: [ :show ]

  # For details on inhe DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
