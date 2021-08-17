class BookingsController < ApplicationController
    def index
        @bookings = Booking.all
    end

    def show
    end



    def create
<<<<<<< HEAD
=======
        @user = current_user
        @plush = Plush.find(params[:plush_id])
        @booking = Booking.new(booking_params)
        @booking.user = @user
        @booking.plush = @plush
        if @booking.save
            redirect_to bookings_path
        else
            render "/plush/#{@plush}"
        end
>>>>>>> master
    end

    def destroy
        @booking = Booking.find(params[:id])
        @booking.destroy
        redirect_to bookings_path
    end
<<<<<<< HEAD

=======
    
    private

    def booking_params
        params.require(:booking).permit(:start_date, :end_date, :plush_id)
    end
>>>>>>> master
end
