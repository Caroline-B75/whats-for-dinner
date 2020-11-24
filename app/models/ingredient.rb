class Ingredient < ApplicationRecord
  has_many :preparations
  has_many :recipes, through: :preparations
end
