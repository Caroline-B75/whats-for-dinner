class Menu < ApplicationRecord
  has_many :menu_recipes
  has_many :recipes, through: :menu_recipes
  has_many :grocery_items
  has_many :accesses
  belongs_to :user

  validates :diet, presence: true
  validates :number_of_people, presence: true
  validates :number_of_meals, presence: true
  validates_inclusion_of :diet, in: Recipe::DIET


  def users
    users = []
    users << self.user

    access_users = accesses.map { |access| access.user }

    users << access_users
    users.flatten
  end
end
