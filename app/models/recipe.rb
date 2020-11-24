class Recipe < ApplicationRecord
  validates :name, presence: true
  validates :difficulty, presence: true
  validates :price, presence: true
  validates :time, presence: true
  validates :content, presence: true
  validates :diet, presence: true
end
