class GroceryItemsController < ApplicationController

  before_action :find_grocery_item

  def index
    @grocery_items = GroceryItem.all
    @menu = Menu.find(params[:menu_id])
    @grocery_items = menu.grocery_items
    @categories = ["Produits laitiers", "Poisson", "Fruits et Légumes", "Boulangerie", "Boucherie", "Cave", "Epicerie sucrée", "Bio", "Hygiène", "Boisson", "Frais", "Condiment et Assaisonnement", "Epicerie sucrée"]
  end

  def create
    @grocery_item = GroceryItem.new(grocery_item_params)
    @menu = Menu.find(params[:menu_id])
    @grocery_item.menu = @menu
    @grocery_item.save
    redirect_to menu_grocery_item_path(@menu)
  end

  def update
    @grocery_item = GroceryItem.find(params[:id])
    @grocery_item.update(grocery_item_params)
    redirect_to menu_grocery_item_path(@grocery_item)
  end

  private

  def find_grocery_item
    @grocery_item = GroceryItem.find(params[:id])
  end

  def grocery_item_params
    params.require(:grocery_item).permit(:name, :quantity, :unit, :category, :checked)
  end

end
