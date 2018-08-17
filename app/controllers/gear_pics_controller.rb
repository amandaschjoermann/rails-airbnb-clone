class GearPicsController < ApplicationController
  def new
    @gear = Gear.find(params[:gear_id])
    @gear_pic = GearPic.new
  end

  def create
    @gear_pic = GearPic.new(gear_pic_params)
    @gear = Gear.find(params[:gear_id])
    @gear_pic.gear = @gear
    if @gear_pic.save
      redirect_to gear_path(@gear)
    else
      render :new
    end
  end

  private

  def gear_pic_params
    params.require(:gear_pic).permit(:photo)
  end
end
