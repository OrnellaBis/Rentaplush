class BookingsController < ApplicationController
    def index
        @bookings = Booking.all
    end

    def show
    end



    def create
    end

    def destroy
        @booking = Booking.find(params[:id])
        @booking.destroy
        redirect_to bookings_path
    end

end
