class PlushesController < ApplicationController
    def index

    end

    def show
      @plush = Plush.find(params[:id])
      @booking = Booking.new
    end
end
