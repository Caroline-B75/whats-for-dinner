class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    authorize @review
    @menu_recipe = MenuRecipe.find(params[:menu_recipe_id])
    @recipe = @menu_recipe.recipe
    @review.recipe = @recipe
    @review.user = current_user

    if @review.save
      redirect_to menu_recipe_path(@menu_recipe)
    else
      flash[:alert] = "Votre avis n'est pas enregistré."
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
