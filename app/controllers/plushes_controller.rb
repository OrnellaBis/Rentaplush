class PlushesController < ApplicationController
  def index
    @plushes = Plush.all
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
