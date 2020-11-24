Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :menus, only: [ :show, :new, :create, :edit ] do
    resources :menu_recipes, only: [ :create ]
    resources :grocery_items, only: [ :index, :create, :update ]
  end

  resources :menu_recipes, only: [ :show, :update, :destroy ] do
    resources :reviews, only: [ :create ]
  end
# ajouter 2 spéciales : grocery et menu_recipes patch
  # get 'users/toys', to: "toys#show_user_toy", as: :user_toys
  post '/menus/:id/switch', to: "menu_recipes#switch"
  post '/menus/:id/create_grocery', to: "groceries#create_grocery"
end
