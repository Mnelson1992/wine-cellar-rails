class BottlesController < ApplicationController

  def new
    @bottle = Bottle.new
  end

  def create
    @bottle = Bottle.new(bottle_params)
    if @bottle.save
      redirect_to bottle_path(@bottle)
    else
      render :new
    end
  end

  def show
    @bottle = Bottle.find_by(params[:id])
  end

  def index
    @bottles = Bottle.all
  end

  private

  def bottle_params
    params.require(:bottle).permit(:name, :grape, :year, :location)
  end


end
