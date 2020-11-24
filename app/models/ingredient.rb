class Ingredient < ApplicationRecord
  CATEGORY = []

  validates :name, presence: true
  validates :unit, presence: true
  validates_inlcusion_of :category, in :CATEGORY, presence: true
end
