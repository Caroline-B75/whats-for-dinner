class PreparationsController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @preparation = Preparation.new(quantity: params[:preparation][:quantity], ingredient_id: params[:preparation][:ingredient_id], recipe_id: @recipe.id)
    @preparation.save!
    authorize @preparation
    redirect_to edit_recipe_path(@recipe)
  end
end
