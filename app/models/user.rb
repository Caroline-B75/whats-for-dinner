class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :menus

  validates :name, presence: true
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
