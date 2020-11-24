class Ingredient < ApplicationRecord
  validates :name, presence: true
  validates :unit, presence: true
  validates :category, presence: true
end
