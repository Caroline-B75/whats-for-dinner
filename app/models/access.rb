class Access < ApplicationRecord
  belongs_to :menu
  belongs_to :user

  attr_accessor :email
end
