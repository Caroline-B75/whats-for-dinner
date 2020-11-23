class AddColumnNamesToRecipe < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :name, :string
    add_column :recipes, :difficulty, :string
    add_column :recipes, :price, :string
    add_column :recipes, :time, :string
    add_column :recipes, :content, :string
    add_column :recipes, :diet, :string
  end
end
