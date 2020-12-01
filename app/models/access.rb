class Access < ApplicationRecord
  belongs_to :menu
  belongs_to :user

  validates :user_id, uniqueness: {scope: :menu_id}
  attr_accessor :email
end
