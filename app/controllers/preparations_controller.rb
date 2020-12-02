class PreparationsController < ApplicationController

  def create
    raise
    @preparation = Preparation.new(quantity: params[], recipe_id: params[:recipe_id])
    authorize @preparation
  end

end
