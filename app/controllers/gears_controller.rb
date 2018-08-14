class GearsController < ApplicationController
  before_action :set_gear, only: [ :show, :edit, :update, :destroy ]

  def index
    @gears = if params[:q]
      Gear.where('category ILIKE ?', "%#{params[:q]}%")
    else
      Gear.all
    end
  end

  def show
    @gear = Gear.find(params[:id])
    @booking = Booking.new
    @user = current_user

  end

  def new
    @gear = Gear.new
  end

  def create
    @gear = Gear.new(gear_params)
    @gear.user_id = current_user.id
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
    params.require(:gear).permit(:name, :category, :description, :price, :photo)
  end

end
