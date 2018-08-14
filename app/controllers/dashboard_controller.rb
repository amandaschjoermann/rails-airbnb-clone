class DashboardController < ApplicationController

  def show
    @gears = Gear.all
    @bookings = Booking.all
  end
end
