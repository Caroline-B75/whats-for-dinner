class GroceryItem < ApplicationRecord
  CATEGORY = []
  UNIT = []

  belongs_to :menu_recipe
  belongs_to :menu

  validates :quantity, presence: true
  validates :name, presence: true
  validates_inclusion_of :category, in :CATEGORY, presence: true
  validates_inclusion_of :unit, in :UNIT, presence: true
end
