class Review < ApplicationRecord
  RATING = [1, 2, 3, 4, 5]
  belongs_to :recipe
  belongs_to :user

  validates :rating, presence: true
  validates :content, presence: true
  validates_inclusion_of :rating, in: RATING
end
