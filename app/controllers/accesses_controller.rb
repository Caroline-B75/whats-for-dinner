class AccessesController < ApplicationController

  def create
    @menu = Menu.find(params[:menu_id])
    @access = Access.new(menu: @menu)
    authorize @access
    @user = User.find_by(email: params[:access][:email])


    if @user.present?
      @access.user = @user
      flash[:notice] = "Le menu a été partagé"
      @access.save
    else
      flash[:alert] = "Ce user n'existe pas"
    end

    redirect_to menu_path(@menu)
  end
end
