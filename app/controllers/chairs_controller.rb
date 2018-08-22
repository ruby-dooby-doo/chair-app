class ChairsController < ApplicationController
  def index
    @chairs = Chair.all
    render 'index.html.erb'
  end

  def show
    @chair = Chair.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def new
    render 'new.html.erb'
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
end
