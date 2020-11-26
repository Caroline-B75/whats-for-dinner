class RemoveRecipeIdFromGroceryItems < ActiveRecord::Migration[6.0]
  def change
    change_column_null :grocery_items, :menu_recipe_id, true
  end
end
