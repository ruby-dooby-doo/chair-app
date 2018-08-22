class ChairsController < ApplicationController
  def index
    @chairs = Chair.all
  end

  def show
    @chair = Chair.find_by(id: params[:id])
  end

  def new
  end

  def create
    chair = Chair.new(
      color: params[:color],
      material: params[:material],
      height: params[:height],
      legs: params[:legs]
    )
    chair.save
    redirect_to "/chairs/#{chair.id}"
  end

  def edit
    @chair = Chair.find_by(id: params[:id])
  end

  def update
    chair = Chair.find_by(id: params[:id])
    chair.legs = params[:legs]
    chair.material = params[:material]
    chair.color = params[:color]
    chair.height = params[:height]
    chair.save
    redirect_to "/chairs/#{chair.id}"
  end

  def destroy
    chair = Chair.find_by(id: params[:id])
    chair.destroy
    redirect_to "/chairs"
  end
end
