class AddColumnFavoriteToMenuRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :menu_recipes, :favorite, :boolean
  end
end
