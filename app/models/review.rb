class Review < ApplicationRecord
  belongs_to :recipe
  belongs_to :user

  validates :rating, presence: true
  validates :content, presence: true
end
