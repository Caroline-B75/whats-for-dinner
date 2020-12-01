class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :menus
  has_many :reviews
  has_many :favorite_recipes
  has_many :favorites, through: :favorite_recipes, source: :recipe

  validates :username, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
