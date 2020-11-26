class GroceryItemsController < ApplicationController
  before_action :find_grocery_item, only: [:update]
  def index
    @grocery_items = policy_scope(GroceryItem)
    @menu = Menu.find(params[:menu_id])
    @grocery_items = @menu.grocery_items
  end
  def create
    @grocery_item = GroceryItem.new(grocery_item_params)
    authorize @grocery_item
    @menu = Menu.find(params[:menu_id])
    @grocery_item.menu = @menu
    @grocery_item.save
    redirect_to menu_grocery_item_path(@menu)
  end
  def update
    @grocery_item.update(grocery_item_params)
    redirect_to menu_grocery_item_path(@grocery_item)
  end
  private
  def find_grocery_item
    @grocery_item = GroceryItem.find(params[:menu_id])
    authorize @grocery_item
  end
  def grocery_item_params
    params.require(:grocery_item).permit(:name, :quantity, :unit, :category, :checked, :menu_recipe_id, :menu_id)
  end
end