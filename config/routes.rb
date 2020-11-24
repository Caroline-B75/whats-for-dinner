Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :menus, only: [ :show, :new, :create, :edit ] do
    resources :menu_recipes, only: [ :show, :create, :update, :destroy ] do
      resources :reviews, only: [:create]
    end
    resources :grocery_items, only: [:index, :create, :update]
  end

# ajouter 2 spéciales : grocery et menu_recipes patch

end
