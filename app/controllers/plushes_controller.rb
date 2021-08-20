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
        info_window: render_to_string(partial: "info_window", locals: { plush: plush })
        # image_url: helpers.asset_url('bear.png')
      }
    end
  end

  def show
    @plush = Plush.find(params[:id])
    @booking = Booking.new
  end
end
