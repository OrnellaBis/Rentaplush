class PlushesController < ApplicationController
  def index
    @plushes = Plush.all

    @markers = @plushes.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def show
    @plush = Plush.find(params[:id])
    @booking = Booking.new
  end

end
