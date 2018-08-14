class DashboardController < ApplicationController

  def show
    @gears = Gear.all
  end
end
