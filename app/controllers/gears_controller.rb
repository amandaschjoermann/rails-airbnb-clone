class GearsController < ApplicationController
  def index
    @gears = Gear.all?
  end

  def show
    @gear = Gear.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
