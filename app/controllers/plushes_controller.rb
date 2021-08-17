class PlushesController < ApplicationController
  def index
    @plushes = Plush.all
  end
  def show

  end

end
