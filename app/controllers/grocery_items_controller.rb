class GroceryItemsController < ApplicationController
  before_action :find_grocery_item, only: [:update]

  def index
    @grocery_items = policy_scope(GroceryItem)
    @menu = Menu.find(params[:menu_id])
    @grocery_items = @menu.grocery_items
    @grocery_item = GroceryItem.new
  end

  def create
    @grocery_item = GroceryItem.new(grocery_item_params)
    authorize @grocery_item
    @menu = Menu.find(params[:menu_id])
    @grocery_item.menu = @menu
    @grocery_item.save
    redirect_to menu_grocery_items_path(@menu)
  end

  def update
    @grocery_item.update(grocery_item_params)
    redirect_to menu_grocery_items_path(@grocery_item.menu)
  end

  def create_grocery
    @menu = Menu.find(params[:id])
    @menu.grocery_items.destroy_all
    menu_grocery_items_names = []
    @menu.menu_recipes.each do |menu_recipe|
      recipe = Recipe.find(menu_recipe.recipe_id)
      Preparation.where(recipe_id: recipe.id).each do |preparation|
        ingredient = Ingredient.find(preparation.ingredient_id)
        if menu_grocery_items_names.include?(ingredient.name)
          grocery_item_to_add_quantity_to = GroceryItem.where(["name = ? and menu_id = ?", ingredient.name, @menu.id])[0]
          grocery_item_to_add_quantity_to.update(quantity: (grocery_item_to_add_quantity_to.quantity + (preparation.quantity * menu_recipe.number_of_people)))
        else
          new_item = GroceryItem.create!(quantity: (preparation.quantity * menu_recipe.number_of_people),
                                         name: ingredient.name, category: ingredient.category, unit: ingredient.unit,
                                         checked: false, menu_recipe_id: menu_recipe.id, menu_id: @menu.id)
          menu_grocery_items_names << ingredient.name
          authorize new_item
        end
      end
    end
    redirect_to menu_grocery_items_path(@menu)
  end

  private

  def find_grocery_item
    @grocery_item = GroceryItem.find(params[:id])
    authorize @grocery_item
  end

  def grocery_item_params
    params.require(:grocery_item).permit(:name, :quantity, :unit, :category, :checked, :menu_recipe_id, :menu_id)
  end
end
