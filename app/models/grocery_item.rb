class GroceryItem < ApplicationRecord
  belongs_to :menu_recipe, optional: true
  belongs_to :menu

  validates :quantity, presence: true
  validates :name, presence: true
  validates_inclusion_of :category, in: Ingredient::CATEGORY, presence: true
  validates_inclusion_of :unit, in: Ingredient::UNIT, presence: true
end
