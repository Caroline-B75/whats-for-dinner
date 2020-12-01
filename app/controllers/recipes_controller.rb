class RecipesController < ApplicationController
  def favorite
    @menu_recipe = MenuRecipe.find(params[:id])
    recipe = Recipe.find(@menu_recipe.recipe_id)
    current_user.favorites << recipe
    redirect_to menu_recipe_path(@menu_recipe), notice: "#{recipe.name} a été ajouté à vos recettes favorites"
    authorize recipe
  end

  def unfavorite
    @menu_recipe = MenuRecipe.find(params[:id])
    recipe = Recipe.find(@menu_recipe.recipe_id)
    current_user.favorites.delete(recipe)
    redirect_to menu_recipe_path(@menu_recipe), notice: "#{recipe.name} a été retiré de vos recettes favorites"
    authorize recipe
  end
end
