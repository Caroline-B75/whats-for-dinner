class Recipe < ApplicationRecord

  DIFFICULTY = ["très facile", "facile", "moyen", "avancé"]
  DIET = ["végétarien", "flexitarian", "carnivore", "sans porc"]
  PRICE = ["bon marché", "coût moyen", "assez cher"]

  has_many :preparations
  has_many :ingredients, through: :preparations
  has_many :reviews
  has_many :menu_recipes
  has_many :menus, through: :menu_recipes
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates_inclusion_of :difficulty, in: DIFFICULTY, presence: true
  validates_inclusion_of :price, in: PRICE, presence: true
  validates :time, presence: true
  validates :content, presence: true
  validates_inclusion_of :diet, in: DIET, presence: true
end
