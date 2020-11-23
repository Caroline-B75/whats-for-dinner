class Menu < ApplicationRecord
  DIET = []
  belongs_to :user
  has_many :recipes, through: :menu_recipes
  has_many :menu_recipes
  has_many :grocery_items
  validates :diet, presence: true
  validates :number_of_people, presence: true
  validates :number_of_meals, presence: true
  validates_inclusion_of :diet, in :DIET
end
