class MenusController < ApplicationController
  def index
    @menus = policy_scope(Menu)

    @user_menus = @menus.where(user: current_user)
    @accesses = Access.where(user: current_user)

    @access_menus = []

    @accesses.each do |access|
      @access_menus << access.menu
    end

    @final_menus = (@user_menus + @access_menus).sort.reverse.first(5)
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
    @menu = Menu.find(params[:id])
    @random_recipes = create_list_recipes_not_existing(@menu).sample(5)
    authorize @menu
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.grocery_items.destroy_all
    @menu.menu_recipes.destroy_all
    @menu.delete
    authorize @menu
    render :back
  end

  private

  def menu_params
    params.require(:menu).permit(:diet, :number_of_people, :number_of_meals)
  end

  def create_list_recipes_not_existing(menu)
    menu_recipes_ids = []
    menu.menu_recipes.each do |menu_recipe|
      menu_recipes_ids << Recipe.find(menu_recipe.recipe_id)
    end
    if menu.diet == "flexitarien"
      list_recipes = Recipe.where.not(id: menu_recipes_ids)
    else
      list_recipes = Recipe.where.not(id: menu_recipes_ids).where(diet: menu.diet)
    end
    return list_recipes
  end
end
