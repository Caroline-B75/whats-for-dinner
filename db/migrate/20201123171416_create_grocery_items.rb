class CreateGroceryItems < ActiveRecord::Migration[6.0]
  def change
    create_table :grocery_items do |t|
      t.integer :quantity
      t.string :name
      t.string :category
      t.string :unit
      t.boolean :checked
      t.references :menu_recipe, null: false, foreign_key: true
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
