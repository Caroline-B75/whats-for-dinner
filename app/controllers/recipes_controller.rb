class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    authorize @recipe
  end

  def create
    @recipe = Recipe.new(name: params[:recipe][:name], difficulty:  params[:recipe][:difficulty], price:  params[:recipe][:price], diet:  params[:recipe][:diet], time:  params[:recipe][:time], content:  params[:recipe][:content], photo:  params[:recipe][:photo])
    @recipe.save!
    authorize @recipe
    redirect_to edit_recipe_path(@recipe)
  end

  def show
    @recipe = Recipe.find(params[:id])
    authorize @recipe
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @ingredient = Ingredient.new
    @preparation = Preparation.new
    authorize @recipe
  end

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
