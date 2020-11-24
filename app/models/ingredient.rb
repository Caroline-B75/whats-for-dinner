class Ingredient < ApplicationRecord
  CATEGORY = []
  has_many :preparations
  has_many :recipes, through: :preparations
  
  validates :name, presence: true
  validates :unit, presence: true
  validates_inlcusion_of :category, in :CATEGORY, presence: true
end
