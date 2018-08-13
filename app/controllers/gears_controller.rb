class GearsController < ApplicationController
  before_action :set_gear, only: [ :show, :edit, :update, :destroy ]

  def index
    @gears = Gear.all?
  end

  def show
    @gear = Gear.find(params[:id])
  end

  def new
    @gear = Gear.new
  end

  def create
    @gear = Gear.new(gear_params)
    if @gear.save
      redirect_to gear_path(@gear)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_gear
    @gear = Gear.find(params[:id])
  end

  def gear_params
    params.require(:gear).permit(:name, :category, :description, :price)
  end

end
