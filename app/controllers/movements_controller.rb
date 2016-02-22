class MovementsController < ApplicationController

  before_action :load_movement, only: [:show, :edit, :update, :destroy]

  def index
    @movements = Movement.all
  end

  def create
    Movement.create!(permitted_params)
    redirect_to movements_path
  end

  def update
    @movement.update! permitted_params
    redirect_to movements_path
  end

  def destroy
    @movement.destroy
    redirect_to movements_path
  end

  private

  def permitted_params
    params.require(:movement).permit(:type, :amount, :description)
  end

  def load_movement
    @movement = Movement.find(params[:id])
  end
end