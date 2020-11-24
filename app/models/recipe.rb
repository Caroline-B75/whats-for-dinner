class Recipe < ApplicationRecord
  DIFFICULTY = []
  DIET = []
  PRICE = []

  validates :name, presence: true
  validates_inclusion_of :difficulty, in :DIFFICULTY, presence: true
  validates_inclusion_of :price, in :PRICE, presence: true
  validates :time, presence: true
  validates :content, presence: true
  validates_inclusion_of :diet, in :DIET, presence: true
end
