class Recipe < ApplicationRecord

  DIFFICULTY = []
  DIET = []
  PRICE = []

  has_many :preparations
  has_many :ingredients, through: :preparations
  has_many :reviews
  has_many :menus, through: :menu_recipes
  
  validates :name, presence: true
  validates_inclusion_of :difficulty, in :DIFFICULTY, presence: true
  validates_inclusion_of :price, in :PRICE, presence: true
  validates :time, presence: true
  validates :content, presence: true
  validates_inclusion_of :diet, in :DIET, presence: true
end
