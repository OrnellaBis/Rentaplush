class PlushesController < ApplicationController
  def index
    @plushes = Plush.all
  end

  def show
    @plush = Plush.find(params[:id])
    @booking = Booking.new
   end
end
