class PlushesController < ApplicationController
  def index
    @plushes = Plush.all

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
