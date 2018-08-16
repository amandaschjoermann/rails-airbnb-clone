class GearsController < ApplicationController
  before_action :set_gear, only: [ :show, :edit, :update, :destroy ]

  def index
    @gears = Gear.where.not(latitude: nil, longitude: nil)

    # if params[:query].present?
    #   sql_query = "name ILIKE :query OR description ILIKE :query"
    #   @gears = Gear.where(sql_query, query: "%#{params[:query]}%")
    # else
    #   @gears = Gear.all
    # end

    if params[:categories]
      @gears = @gears.where(category: [params[:categories]])
    elsif params[:q].present?
      sql_query = "name ILIKE :q OR description ILIKE :q OR category ILIKE :q"
      @gears = @gears.where(sql_query, q: "%#{params[:q]}%")
    end

    # @gears = @gears.where(category: [params[:categories]]) if params[:categories]

    @markers = @gears.map do |gear|
      {
        lat: gear.latitude,
        lng: gear.longitude,
        infoWindow: { content: render_to_string(partial: "/gears/map_box", locals: { gear: gear }) }
      }
    end
    @categories = Gear.categories
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
