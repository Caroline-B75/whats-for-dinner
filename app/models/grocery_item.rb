class GroceryItem < ApplicationRecord
  belongs_to :menu_recipe
  belongs_to :menu
end
