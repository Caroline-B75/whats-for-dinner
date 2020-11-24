class MenusController < ApplicationController
  def new
    @menu = Menu.new
    authorize @menu
  end

  def create
    @menu = Menu.new(menu_params)
    @menu.user = current_user
    @menu.save
    if @menu.save
      redirect_to menu_path(@menu)
    else
      render :new
    end

    authorize @menu
  end

  def show
    @menu = Menu.find(params[:id])
    authorize @menu
  end

  def edit
    @menu = Menu.find(params[:id])
    authorize @menu
  end

  def menu_params
    params.require(:menu).permit(:diet, :number_of_people, :number_of_meals)
  end
end
