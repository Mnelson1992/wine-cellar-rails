class BottlesController < ApplicationController

  def new
    @bottle = Bottle.new
  end

  def create
    @bottle = Bottle.new(bottle_params)
    if @bottle.save
      session[:bottle_id] = @bottle.id
      redirect_to bottles_path(@bottle)
    else
      render :new
    end
  end

  def index
    @bottles = Bottle.all
  end

  private

  def bottle_params
    params.require(:bottle).permit(:name, :grape, :year, :location)
  end


end
