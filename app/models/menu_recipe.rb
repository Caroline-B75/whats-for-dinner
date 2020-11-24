class MenuRecipe < ApplicationRecord
  belongs_to :menu
  belongs_to :recipe
  has_many :grocery_items

  validates :number_of_people, presence: true
end
