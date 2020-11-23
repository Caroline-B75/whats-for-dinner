class MenuRecipe < ApplicationRecord
  belongs_to :menu
  has_many :recipes
end
