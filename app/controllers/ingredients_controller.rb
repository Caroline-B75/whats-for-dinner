class IngredientsController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = Ingredient.new(name: params[:ingredient][:name], unit: params[:ingredient][:unit], category: params[:ingredient][:category])
    @ingredient.save!
    authorize @ingredient
    redirect_to edit_recipe_path(@recipe)
  end
end
