class PlushesController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "category ILIKE :query OR description ILIKE :query OR localisation ILIKE :query"
      @plushes = Plush.where(sql_query, query: "%#{params[:query]}%")
      # @plushes = Plush.where("category ILIKE ?", "%#{params[:query]}%")
    else
    @plushes = Plush.all
    end

    @markers = @plushes.geocoded.map do |plush|
      {
        lat: plush.latitude,
        lng: plush.longitude,
        info_window: render_to_string(partial: "info_window", locals: { plush: plush }),
        # image_url: helpers.asset_url('bear.png')
      }
    end
  end

  def show
    @plush = Plush.find(params[:id])
    @booking = Booking.new
  end

  def new
    @plush = Plush.new
  end

  def create
    @plush = Plush.new(plush_params)
    @user = current_user
    @plush.user = @user
    if @plush.save
      redirect_to plush_path(@plush)
    else
      render :new
    end
  end

  private

    def plush_params
        params.require(:plush).permit(:name, :category, :price_per_day, :description, :localisation, :size, :photo)
    end

end
