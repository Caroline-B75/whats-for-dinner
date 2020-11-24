class Review < ApplicationRecord
  RATING = [1, 2, 3, 4]
  belongs_to :recipe
  belongs_to :user
  validates_inclusion_of :rating, in :RATING
end
