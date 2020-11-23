class Menu < ApplicationRecord
  belongs_to :user
  has_many :recipes, through: :menu_recipes
  has_many :menu_recipes
  validates :diet, presence: true
  validates :number_of_people, presence: true
  validates :number_of_meals, presence: true
end
