class CreateFavoriteRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_recipes do |t|
      t.integer :recipe_id
      t.integer :user_id

      t.timestamps
    end
  end
end
