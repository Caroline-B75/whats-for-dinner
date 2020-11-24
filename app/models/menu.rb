class Menu < ApplicationRecord
  DIET = []
  has_many :recipes, through: :menu_recipes
  has_many :menu_recipes
  has_many :grocery_items
  belongs_to :user
  
  validates :diet, presence: true
  validates :number_of_people, presence: true
  validates :number_of_meals, presence: true
  validates_inclusion_of :diet, in :DIET
end
