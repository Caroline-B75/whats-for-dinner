class GroceryItem < ApplicationRecord
  belongs_to :menu_recipe
  belongs_to :menu

  validates :quantity, presence: true
  validates :name, presence: true
  validates :category, presence: true
  validates :unit, presence: true
end
