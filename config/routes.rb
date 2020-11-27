Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :menus, only: [ :show, :new, :create, :edit ] do
    resources :menu_recipes, only: [ :create, :destroy ]
    resources :grocery_items, only: [ :index, :create ]
  end

  resources :grocery_items, only: [ :update ]
  resources :menu_recipes, only: [ :show, :update, :destroy ] do
    resources :reviews, only: [ :create ]
  end

# ajouter 2 spéciales : grocery et menu_recipes patch
  # get 'users/toys', to: "toys#show_user_toy", as: :user_toys
  post '/menus/:menu_id/menu_recipes/:id/switch', to: "menu_recipes#switch", as: :switch_menu_recipe
  post '/menus/:id/create_grocery', to: "grocery_items#create_grocery", as: :menu_create_grocery_list
end
