class MenusController < ApplicationController
  def index
    @menus = policy_scope(Menu)

    @final_menus = @menus.where(user: current_user)

    @final_menus.sort.reverse.first(5)

  end

  def new
    @menu = Menu.new
    authorize @menu
  end

  def create
    @menu = Menu.new(menu_params)
    @menu.user = current_user
    @menu.save

    if @menu.save
      MenuRecipesController.create_menu_recipes(@menu)
      redirect_to edit_menu_path(@menu)
    else
      render :new
    end

    authorize @menu
  end

  def show
    @menu = Menu.find(params[:id])
    @access = Access.new
    authorize @menu
  end

  def edit
    @random_recipes = Recipe.all.sample(5)
    @menu = Menu.find(params[:id])
    authorize @menu
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.grocery_items.destroy_all
    @menu.menu_recipes.destroy_all
    @menu.delete
    authorize @menu
    redirect_to root_path
  end

  private

  def menu_params
    params.require(:menu).permit(:diet, :number_of_people, :number_of_meals)
  end
end
