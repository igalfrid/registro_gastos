class MovementsController < ApplicationController

  def index
    @movements = Movement.all
  end

  def create
    Movement.create!(movement_params)
    redirect_to movements_path
  end

  def show
    @movement = Movement.find(params[:id])
  end

  def edit
    @movement = Movement.find(params[:id])
  end

  private
    def movement_params
      params.require(:movement).permit(:type, :amount, :description)
    end
end