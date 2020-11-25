class GroceryItemsController < ApplicationController

  before_action :find_grocery_item

  def index
    @grocery_items = policy_scope(GroceryItem).all
    @menu = policy_scope(Menu).find(params[:menu_id])
    @grocery_items = @menu.grocery_items
  end

  def create
    @grocery_item = policy_scope(GroceryItem).new(grocery_item_params)
    @menu = policy_scope(Menu).find(params[:menu_id])
    @grocery_item.menu = @menu
    @grocery_item.save
    redirect_to menu_grocery_item_path(@menu)
  end

  def update
    @grocery_item = policy_scope(GroceryItem).find(params[:id])
    @grocery_item.update(grocery_item_params)
    redirect_to menu_grocery_item_path(@grocery_item)
  end

  private

  def find_grocery_item
    @grocery_item = policy_scope(GroceryItem).find(params[:menu_id])
  end

  def grocery_item_params
    params.require(:grocery_item).permit(:name, :quantity, :unit, :category, :checked, :menu_recipe_id, :menu_id)
  end

end
