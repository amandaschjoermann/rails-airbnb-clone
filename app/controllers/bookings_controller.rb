class BookingsController < ApplicationController
  before_action :set_booking, only: [ :show, :edit, :update, :destroy ]

  def index
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.gear = Gear.find(params[:gear_id])
    if @booking.save
      redirect_to gears_path
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

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
