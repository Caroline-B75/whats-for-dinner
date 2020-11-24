class MenuRecipe < ApplicationRecord
  belongs_to :menu
  has_many :recipes

  validates :number_of_people, presence: true
end
