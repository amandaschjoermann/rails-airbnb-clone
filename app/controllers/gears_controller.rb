class GearsController < ApplicationController
  before_action :set_gear, only: [ :show, :edit, :update, :destroy ]

  def index
    @gears = Gear.where.not(latitude: nil, longitude: nil)
    @gears = @gears.where('category ILIKE ?', "%#{params[:q]}%") if params[:q]

    @markers = @gears.map do |gear|
      {
        lat: gear.latitude,
        lng: gear.longitude,
        infoWindow: { content: render_to_string(partial: "/gears/map_box", locals: { gear: gear }) }
      }
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
    @gear.destroy

    redirect_to dashboard_path
  end

  private

  def set_gear
    @gear = Gear.find(params[:id])
  end

  def gear_params
    params.require(:gear).permit(:name, :category, :description, :price, :photo, :address)
  end

end
