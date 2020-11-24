class Recipe < ApplicationRecord
  has_many :preparations
  has_many :ingredients, through: :preparations
  has_many :reviews
  has_many :menus, through: :menu_recipes

end
